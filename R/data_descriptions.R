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
#' @source ...unclear.
#'
#' @examples
#' plot(sf::st_as_sf(drc_nat))
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
#' @source ...unclear.
#'
#' @examples
#' plot(sf::st_as_sf(drc_reg))
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
#' @source ...unclear.
#'
#' @examples
#' plot(sf::st_as_sf(drc_zone))
'drc_zone'

