#' -------------------------------------------------------------------------------------------------
#' Format Raw Data : Liberia
#' 
#' @author Catherine Eisenhauer
#' @date July 2022
#'
#' @description Function to format and save map data for Liberia. Most of the script builds the 
#' health district level data. The final section then aggregates these data to the county and
#' national levels.
#'
#' @suggests 
#'   dplyr, rio, sf, tinker, ggplot2
#' -------------------------------------------------------------------------------------------------

library(dplyr)

# LOAD ---------------------------------------------------------------------------------------------
#df <- rio::import(here::here('data-raw', 'liberia', 'geo_dictionary_liberia.csv'))

liberia_zone <- sf::read_sf(here::here('data-raw', 'liberia',
                                       'lbr_admbnda_adm2_ocha_20191104.shp')) %>%
             sf::st_make_valid() %>%
             as_tibble() %>%
             select(ADM2_EN, ADM1_EN, geometry) %>%
             mutate(country = 'liberia',
                    area = sf::st_area(geometry) / 1000^2)
           

# WRANGLE ------------------------------------------------------------------------------------------
# clean up 
liberia_zone <- liberia_zone %>%
             linelist::clean_data() %>%
             rename(reg = adm1_en,
                    zone = adm2_en) %>%
             mutate(across(c(reg, zone),
                           ~ stringr::str_replace(., '_', ' '),
                           .names = '{.col}_display'),
                    across(ends_with('display'),
                           stringr::str_to_title))

# fix zone name issues
#fixes <- list('current' = 'reference')

#liberia_zone <- tinker::validate_names(df_new = liberia_zone,
                                       #df_ref = df,
                                       #fix_zone = fixes)


# USEFUL SEARCH COMMANDS ---------------------------------------------------------------------------
#df %>% pull(zone) %>% sort()

#df[grepl('kay', df$zone), ]

#liberia_zone[grepl('lu', liberia_zone$zone), c('zone', 'reg')]

#liberia_zone %>% filter(reg == 'tshopo') %>% select(reg, zone, Nom) %>% as.data.frame

#df %>%
  #filter(zone %notin% liberia_zone$zone)


# CONVERT BACK TO SF -------------------------------------------------------------------------------
liberia_zone <- sf::st_as_sf(liberia_zone)


# CHECK MAP ----------------------------------------------------------------------------------------
ggplot2::ggplot(liberia_zone) +
  ggplot2::geom_sf() +
  ggplot2::theme_void()


# SAVE ---------------------------------------------------------------------------------------------
usethis::use_data(liberia_zone)#, overwrite = TRUE)


# BUILD AND SAVE REG / NAT LEVELS ------------------------------------------------------------------
# regional
liberia_reg <- liberia_zone %>% 
                group_by(reg) %>%
                summarize() %>%
                mutate(country = 'liberia',
                       area = sf::st_area(geometry) / 1000^2,
                       reg_display = stringr::str_replace(reg, '_', ' '),
                       reg_display = stringr::str_to_title(reg_display))

usethis::use_data(liberia_reg)#, overwrite = TRUE)

# national
liberia_nat <- liberia_reg %>% 
                group_by(country) %>%
                summarize() %>%
                mutate(area = sf::st_area(geometry) / 1000^2,
                       country_display = 'Democratic Republic of the Congo')

usethis::use_data(liberia_nat)#, overwrite = TRUE)

