#' Build pkgdown site
#'
#' @description This internal function builds the pkgdown site and then embedds the "available
#' countries" map into the homepage. 
#'
#' @importFrom pkgdown build_site()
#' @importFrom xml2 read_html xml_find_first read_html xml_find_all xml_add_sibling xml_replace 
#'   write_html
build_docs <- function() {
  pkgdown::build_site()

  index_html <- xml2::read_html("docs/index.html")

  example <- xml2::xml_find_first(index_html, ".//*/comment()[contains(., 'epimaps:availability')]")

  example_html <- xml2::read_html("man/figures/currently_available.html")
  widget_html <- xml2::xml_find_first(example_html, ".//*[contains(@class, 'leaflet')]")
  widget_deps <- xml2::xml_find_all(example_html, ".//script|.//link")

  for (dep in rev(widget_deps)) {
        xml2::xml_add_sibling(example, dep)
  }
  xml2::xml_replace(example, widget_html)

  xml2::write_html(index_html, "docs/index.html")
}

