# THE WORLD ----------------------------------------------------------------------------------------

#' The World
#'
#' Countries of the World
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 233 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(world) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'world'



# CONTINENTS ---------------------------------------------------------------------------------------

#' Africa
#'
#' Countries of Africa
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 54 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(africa) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'africa'


#' Asia
#'
#' Countries of Asia
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 53 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(asia) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'asia'


#' Europe
#'
#' Countries of Europe
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 50 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(europe) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'europe'


#' North America
#'
#' Countries of North America
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 38 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(north_america) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'north_america'


#' Oceania
#'
#' Countries of Oceania
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 25 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(oceania) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'oceania'


#' South America
#'
#' Countries of South America
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 13 features and 2 fields
#' \describe{
#'  \item{name}{Country name}
#'  \item{continent}{Continent name}
#' }
#'
#' @keywords dataset
#'
#' @source [https://geojson-maps.ash.ms/](https://geojson-maps.ash.ms/)
#'
#' @examples
#' ggplot2::ggplot(south_america) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'south_america'



# AFGHANISTAN --------------------------------------------------------------------------------------

#' Afghanistan
#'
#' Health district level sf data for Afghanistan.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 398 features and 4 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{zone}{Zone name (health district)}
#'  \item{area}{Zone area (m2)}
#'  \item{zone_display}{Title case version of `zone`}
#' }
#'
#' @keywords dataset
#'
#' @source [geoBoundaries](https://www.geoboundaries.org) via 
#'   [humdata](https://data.humdata.org/) (2020).

#'
#' @examples
#' ggplot2::ggplot(afghanistan_zone) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'afghanistan_zone'


# DRC ----------------------------------------------------------------------------------------------

#' Democratic Republic of the Congo
#'
#' National level sf data for the Democratic Republic of the Congo.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 1 feature and 3 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{area}{Zone area (m2)}
#'  \item{country_display}{Full and formatted name of `country`}
#' }
#'
#' @keywords dataset
#'
#' @source Legacy (ie. I don't know).
#'
#' @examples
#' ggplot2::ggplot(drc_nat) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'drc_nat'

#' Democratic Republic of the Congo
#'
#' Health zone level sf data for the Democratic Republic of the Congo.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 26 features and 4 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{reg}{Region (province) name}
#'  \item{area}{Region area (m2)}
#'  \item{reg_display}{Title case version of `reg`}
#' }
#'
#' @keywords dataset
#'
#' @source Legacy (ie. I don't know).
#'
#' @examples
#' ggplot2::ggplot(drc_reg) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'drc_reg'


#' Democratic Republic of the Congo
#'
#' Health zone level sf data for the Democratic Republic of the Congo.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 519 features and 6 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{reg}{Region (province) name}
#'  \item{zone}{Zone name (health zone)}
#'  \item{area}{Zone area (m2)}
#'  \item{reg_display}{Title case version of `reg`}
#'  \item{zone_display}{Title case version of `zone`}
#' }
#'
#' @keywords dataset
#'
#' @source Legacy (ie. I don't know).
#'
#' @examples
#' ggplot2::ggplot(drc_zone) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'drc_zone'


# LIBERIA ------------------------------------------------------------------------------------------

#' Liberia
#'
#' National level sf data for Liberia.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 1 feature and 3 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{area}{Zone area (m2)}
#'  \item{country_display}{Full and formatted name of `country`}
#' }
#'
#' @keywords dataset
#'
#' @source OCHA West and Central AFrica via [humdata](https://data.humdata.org/) (2022).
#'
#' @examples
#' ggplot2::ggplot(liberia_nat) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'liberia_nat'

#' Liberia
#'
#' Health zone level sf data for the Democratic Republic of the Congo.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 15 features and 4 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{reg}{Region (county) name}
#'  \item{area}{Region area (m2)}
#'  \item{reg_display}{Title case version of `reg`}
#' }
#'
#' @keywords dataset
#'
#' @source OCHA West and Central AFrica via [humdata](https://data.humdata.org/) (2022).
#'
#' @examples
#' ggplot2::ggplot(liberia_reg) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'liberia_reg'


#' Liberia
#'
#' Health zone level sf data for the Democratic Republic of the Congo.
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 136 features and 6 fields: 
#' \describe{
#'  \item{country}{Country name}
#'  \item{reg}{Region (county) name}
#'  \item{zone}{Zone name (health district)}
#'  \item{area}{Zone area (m2)}
#'  \item{reg_display}{Title case version of `reg`}
#'  \item{zone_display}{Title case version of `zone`}
#' }
#'
#' @keywords dataset
#'
#' @source OCHA West and Central AFrica via [humdata](https://data.humdata.org/) (2022).
#'
#' @examples
#' ggplot2::ggplot(liberia_zone) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'liberia_zone'



# UGANDA -------------------------------------------------------------------------------------------

#' Uganda
#'
#' Admin level 1 (district) level sf data for Uganda. 
#'
#' @docType data
#'
#' @format A `Simple feature collection` with 146 features and 6 fields: 
#' \describe{
#'  \item{adm0_name}{Country Name}
#'  \item{adm0_iso3}{ISO Country Code}
#'  \item{adm0_sub}{Country Subset (All, North, South, etc.)}
#'  \item{adm1_name}{District Name}
#'  \item{pcode}{P Code}
#'  \item{adm1_pop}{District Population}
#' }
#'
#' @keywords dataset
#'
#' @source Epicentre DS.
#'
#' @examples
#' ggplot2::ggplot(uganda_zone) +
#'   ggplot2::geom_sf(fill = '#2e4473',
#'                    color = 'white') +
#'   ggplot2::theme_void()
'uganda_zone'

