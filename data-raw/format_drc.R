#' -------------------------------------------------------------------------------------------------
#' Format Raw Data : DRC
#' 
#' @author Catherine Eisenhauer
#' @date July 2022
#'
#' @description Function to format and save map data for DRC. Most of the script builds the health
#' zone level data. The final section then aggregates these data to the regional and national
#' levels.
#'
#' @suggests 
#'   dplyr, rio, sf, tinker, ggplot2
#' -------------------------------------------------------------------------------------------------

library(dplyr)

# LOAD ---------------------------------------------------------------------------------------------
df <- rio::import(here::here('data-raw', 'drc', 'geo_dictionary_drc.csv'))

drc_zone <- sf::read_sf(here::here('data-raw', 'drc', 'RDC_Zone_de_sante_04012019.shp')) %>%
             sf::st_make_valid() %>%
             as_tibble() %>%
             select(PAYS, PROVINCE, Nom, geometry) %>%
             mutate(PAYS = 'drc',
                    area = sf::st_area(geometry) / 1000^2)
           

# WRANGLE ------------------------------------------------------------------------------------------
# clean up 
drc_zone <- drc_zone %>%
             linelist::clean_data() %>%
             rename(reg = province,
                    zone = nom,
                    country = pays) %>%
             mutate(across(c(reg, zone),
                           ~ stringr::str_replace(., '_', ' '),
                           .names = '{.col}_display'),
                    across(ends_with('display'),
                           stringr::str_to_title))

# fix region name issues
drc_zone <- drc_zone %>%
  mutate(reg = case_when(reg == 'mai_ndombe' ~ 'maindombe', 
                         reg == 'haut_katanga' & zone == 'manika' ~ 'lualaba', 
                         TRUE ~ reg))

# fix zone name issues
fixes <- list('bagira' = 'bagira_kasha',
              'banjow_moke' = 'bandjow_moke',
              'bipemba' = 'bimpemba',
              'bogosenubia' = 'bogosenubea',
              'boso_manzi' = 'bosomanzi',
              'boso_mondanda' = 'bosomondanda',
              'bosanga' = 'busanga',
              'tshitenge' = 'citenge',
              'djalo_djeka' = 'djalo_ndjeka',
              'kalambayi_kabanga' = 'kalambayi_kaban',
              'kamonia' = 'kamonya',
              'kimbau' = 'kimbao',
              'kisanji' = 'kisandji',
              'kuimba' = 'kwimba',
              'kimbi_lulenge' = 'lulenge_kimbi',
              'makiso_kisangani' = 'makiso_kisangan',
              'lolanga_mampoko' = 'mampoko',
              'manika' = 'manika',
              'mbulula' = 'mbulala',
              'mongbalu' = 'mongbwalu',
              'mwene_ditu' = 'muene_ditu',
              'muetshi' = 'mwetshi',
              'ndjoko_mpunda' = 'ndjoko_punda',
              'omendjadi' = 'omondjadi',
              'penjwa' = 'pendjwa',
              'yalifafo' = 'yalifafu')

drc_zone <- tinker::validate_names(df_new = drc_zone,
                                  df_ref = df,
                                  fix_zone = fixes)

# in df not in sf : lufungula (kinshasa)
# in sf not in df : kyondo and rwanguba (both nord kivu)


# USEFUL SEARCH COMMANDS ---------------------------------------------------------------------------
#df %>% pull(zone) %>% sort()

#df[grepl('kay', df$zone), ]

#drc_zone[grepl('lu', drc_zone$zone), c('zone', 'reg')]

#drc_zone %>% filter(reg == 'tshopo') %>% select(reg, zone, Nom) %>% as.data.frame

#df %>%
  #filter(zone %notin% drc_zone$zone)


# CONVERT BACK TO SF -------------------------------------------------------------------------------
drc_zone <- sf::st_as_sf(drc_zone)


# CHECK MAP ----------------------------------------------------------------------------------------
ggplot2::ggplot(drc_zone) +
  ggplot2::geom_sf() +
  ggplot2::theme_void()


# SAVE ---------------------------------------------------------------------------------------------
usethis::use_data(drc_zone)#, overwrite = TRUE)


# BUILD AND SAVE REG / NAT LEVELS ------------------------------------------------------------------
# regional
drc_reg <- drc_zone %>% 
                group_by(reg) %>%
                summarize() %>%
                mutate(country = 'drc',
                       area = sf::st_area(geometry) / 1000^2,
                       reg_display = stringr::str_replace(reg, '_', ' '),
                       reg_display = stringr::str_to_title(reg_display))

usethis::use_data(drc_reg)#, overwrite = TRUE)

# national
drc_nat <- drc_reg %>% 
                group_by(country) %>%
                summarize() %>%
                mutate(area = sf::st_area(geometry) / 1000^2,
                       country_display = 'Democratic Republic of the Congo')

usethis::use_data(drc_nat)#, overwrite = TRUE)
