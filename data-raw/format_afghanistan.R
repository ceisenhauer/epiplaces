#' -------------------------------------------------------------------------------------------------
#' Format Raw Data : Afghanistan
#' 
#' @author Catherine Eisenhauer
#' @date July 2022
#'
#' @description Function to format and save map data for Afghanistan at the district level only.#'
#'
#' @suggests 
#'   dplyr, rio, sf, tinker, ggplot2
#' -------------------------------------------------------------------------------------------------

library(dplyr)

# LOAD ---------------------------------------------------------------------------------------------
#df <- rio::import(here::here('data-raw', 'afghanistan', 'afghanistan'))

afghanistan_zone <- sf::read_sf(here::here('data-raw', 'afghanistan',
                                           'geoBoundaries-AFG-ADM2.shp')) %>%
                      sf::st_make_valid() %>%
                      as_tibble() %>%
                      select(shapeName, geometry) %>%
                      mutate(country = 'afghanistan',
                             area = sf::st_area(geometry) / 1000^2)
           

# WRANGLE ------------------------------------------------------------------------------------------
# clean up 
afghanistan_zone <- afghanistan_zone %>%
                      linelist::clean_data() %>%
                      rename(zone = shapename) %>%
                      mutate(zone_display = stringr::str_replace(zone, '_', ' '),
                             zone_display = stringr::str_to_title(zone_display))

# fix zone name issues
#fixes <- list('current' = 'reference')

#afghanistan_zone <- tinker::validate_names(df_new = afghanistan_zone,
                                       #df_ref = df,
                                       #fix_zone = fixes)


# USEFUL SEARCH COMMANDS ---------------------------------------------------------------------------
#df %>% pull(zone) %>% sort()

#df[grepl('kay', df$zone), ]

#afghanistan_zone[grepl('lu', afghanistan_zone$zone), c('zone', 'reg')]

#afghanistan_zone %>% filter(reg == 'tshopo') %>% select(reg, zone, Nom) %>% as.data.frame

#df %>%
  #filter(zone %notin% afghanistan_zone$zone)


# CONVERT BACK TO SF -------------------------------------------------------------------------------
afghanistan_zone <- sf::st_as_sf(afghanistan_zone)


# CHECK MAP ----------------------------------------------------------------------------------------
ggplot2::ggplot(afghanistan_zone) +
  ggplot2::geom_sf() +
  ggplot2::theme_void()


# SAVE ---------------------------------------------------------------------------------------------
usethis::use_data(afghanistan_zone)#, overwrite = TRUE)

