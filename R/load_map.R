#' Load map
#'
#' @description Returns a user-specified map in a either sf or tibble format.
#'
#' @param country `str` Country to load.
#' @param level `str` Level of geographic resolution to use, either : zone, reg (regional), nat 
#'   (national). Default is `'zone'`.
#' @param as `str` Type of output desired, either : `'sf`', `'tibble'`, or `'data.table'`. Default
#'   is `'sf'`.
#'
#' @examples
#' drc <- load_map('drc')
#' plot(drc)
#'
#' drc <- load_map(country = 'drc',
#'                 level = 'reg',
#'                 as = 'data.table')
#' head(drc)
#'
#' @export
load_map <- function(country, level = c('zone', 'reg', 'nat'),
                     as = c('sf', 'tibble', 'data.table')) {
  level <- match.arg(level)
  as <- match.arg(as)

  map_name <- paste0('epimaps::', country, '_', level)
  out <- eval(parse(text = map_name))

  if (as == 'sf') {
      out <- sf::st_as_sf(out)
  } else if (as == 'tibble') {
      out <- dplyr::as_tibble(out)
  } else {
      data.table::setDT(out)
  }

  return(out)
}

