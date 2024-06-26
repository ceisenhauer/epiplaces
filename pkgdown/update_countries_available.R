#' Update 'countries available' image for the home page
#'
#' @description Internal function that udpates the 'available countries' image for the home page.
#' **WARNING: this function must be run from the root of the package directory**.
#'
#' @importFrom dplyr %>% filter mutate
#' @importFrom here here
#' @importFrom htmlwidgets saveWidget
#' @importFrom leaflet leaflet addPolylines addPolygons
#' @importFrom rnaturalearth ne_countries
update_countries_available <- function(show = TRUE, update_site = TRUE) {
  currently_available <- c('Afghanistan', 
                           'Democratic Republic of the Congo',
                           'Liberia',
                           'Niger',
                           'Uganda')

  world <- rnaturalearth::ne_countries(returnclass = 'sf') %>%
             filter(admin != 'Antarctica') %>%
             mutate(available = ifelse(admin %in% currently_available, TRUE, FALSE))

  m <- leaflet::leaflet(world) %>%
         leaflet::addPolylines(color = 'black',
                               weight = 1) %>%
         leaflet::addPolygons(data = world %>% filter(available),
                              fillColor = '#315799',
                              fillOpacity = 0.8,
                              weight = 2,
                              label = currently_available,
                              highlightOptions = leaflet::highlightOptions(weight = 3,
                                                                           color = '#315799'))

  if (show) {
    print(m)
  }

  htmlwidgets::saveWidget(m,
                          file = here::here('man', 'figures', 'currently_available.html'),
                          selfcontained = TRUE)

  if (update_site) {
    build_docs()
  }
}

