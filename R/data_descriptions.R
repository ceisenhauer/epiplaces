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
#' ggplot2::ggplot(sf::st_as_sf(afghanistan_zone)) +
#'   ggplot2::geom_sf() +
#'   ggplot2::theme_void()
'afghanistan_zone'


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
#' ggplot2::ggplot(sf::st_as_sf(drc_nat)) +
#'   ggplot2::geom_sf() +
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
#' ggplot2::ggplot(sf::st_as_sf(drc_reg)) +
#'   ggplot2::geom_sf() +
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
#' ggplot2::ggplot(sf::st_as_sf(drc_zone)) +
#'   ggplot2::geom_sf() +
#'   ggplot2::theme_void()
'drc_zone'


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
#' ggplot2::ggplot(sf::st_as_sf(liberia_zone)) +
#'   ggplot2::geom_sf() +
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
#' ggplot2::ggplot(sf::st_as_sf(liberia_zone)) +
#'   ggplot2::geom_sf() +
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
#' ggplot2::ggplot(sf::st_as_sf(liberia_zone)) +
#'   ggplot2::geom_sf() +
#'   ggplot2::theme_void()
'liberia_zone'

