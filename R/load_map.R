#' Load map
#'
#' @description Returns a user-specified map in a either sf or tibble format.
#'
#' @param country `str` Country to load.
#' @param level `str` Level of geographic resolution to use, either : zone, reg (regional), nat 
#'   (national). If a multicountry map is requested (such as 'world' or 'africa'), `level` is
#'   ignored. Default is `'zone'`.
#' @param as `str` Type of output desired, either : `'sf`', `sp', or `'tibble'`, Default is `'sf'`.
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
#' @importFrom data.table setDT
#' @importFrom dplyr as_tibble
#' @importFrom sf as_Spatial st_as_sf
#' @export
load_map <- function(country, level = c('zone', 'reg', 'nat'),
                     as = c('sf', 'sp', 'tibble', 'data.table')) {
  as <- match.arg(as)

  if (country %in% c('world', 'africa', 'asia', 'europe', 'north_america',
                     'oceania', 'south_america')) {
    map_name <- paste0('epiplaces::', country)
  
  } else {
    level <- match.arg(level)

    map_name <- paste0('epiplaces::', country, '_', level)
  }

  out <- eval(parse(text = map_name))
  out <- switch(as,
                'sf' = sf::st_as_sf(out),
                'sp' = sf::as_Spatial(out),
                'tibble' = dplyr::as_tibble(out))

  return(out)
}

