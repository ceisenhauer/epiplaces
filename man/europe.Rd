% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_descriptions.R
\docType{data}
\name{europe}
\alias{europe}
\title{Europe}
\format{
A \verb{Simple feature collection} with 50 features and 2 fields
\describe{
\item{name}{Country name}
\item{continent}{Continent name}
}
}
\source{
\url{https://geojson-maps.ash.ms/}
}
\usage{
europe
}
\description{
Countries of Europe
}
\examples{
ggplot2::ggplot(europe) +
  ggplot2::geom_sf(fill = '#2e4473',
                   color = 'white') +
  ggplot2::theme_void()
}
\keyword{dataset}
