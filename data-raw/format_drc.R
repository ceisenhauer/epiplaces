#' -------------------------------------------------------------------------------------------------
#' Format Raw Data : DRC
#' 
#' @author Catherine Eisenhauer
#' @date July 2022
#'
#' @description Function to format and save map data for DRC (at the health zone level).
#'
#' @suggests 
#'   dplyr, rio, sf, tinker, ggplot2
#' -------------------------------------------------------------------------------------------------

df <- rio::import(here::here('data-raw', 'drc', 'geo_dictionary_drc.csv'))

sf_zone <- sf::read_sf(here::here('data-raw', 'drc', 'RDC_Zone_de_sante_04012019.shp')) %>%
             sf::st_make_valid() %>%
             as_tibble() %>%
             select(PAYS, PROVINCE, Nom, geometry) %>%
             mutate(area = sf::st_area(geometry) / 1000^2)

# clean up 
sf_zone <- sf_zone %>%
             linelist::clean_data() %>%
             rename(reg = province,
                    zone = nom,
                    country = pays) %>%
             mutate(across(c(reg, zone), stringr::str_to_title, .names = '{.col}_display'))

# fix region name issues
sf_zone <- sf_zone %>%
  mutate(reg = case_when(reg == 'mai_ndombe' ~ 'maindombe', # mai-ndombe spelling issue
                         reg == 'haut_katanga' & zone == 'manika' ~ 'lualaba', # fix reg for manika
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

sf_zone <- tinker::validate_names(df_new = sf_zone,
                                  df_ref = df,
                                  fix_zone = fixes)

# in df not in sf : lufungula (kinshasa)
# in sf not in df : kyondo and rwanguba (both nord kivu)


# USEFUL SEARCH COMMANDS ---------------------------------------------------------------------------
#df %>% pull(zone) %>% sort()

#df[grepl('kay', df$zone), ]

#sf_zone[grepl('lu', sf_zone$zone), c('zone', 'reg')]

#sf_zone %>% filter(reg == 'tshopo') %>% select(reg, zone, Nom) %>% as.data.frame

#df %>%
  #filter(zone %notin% sf_zone$zone)


# CONVERT BACK TO SF -------------------------------------------------------------------------------
sf_zone <- sf::st_as_sf(sf_zone)


# CHECK MAP ----------------------------------------------------------------------------------------
ggplot2::ggplot(sf_zone) +
  ggplot2::geom_sf() +
  ggplot2::theme_void()


# SAVE ---------------------------------------------------------------------------------------------
usethis::use_data(sf_zone)

