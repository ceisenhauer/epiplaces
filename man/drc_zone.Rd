% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_descriptions.R
\docType{data}
\name{drc_zone}
\alias{drc_zone}
\title{Democratic Republic of the Congo}
\format{
A \verb{Simple feature collection} with 519 features and 6 fields:
\describe{
\item{country}{Country name}
\item{reg}{Region (province) name}
\item{zone}{Zone name (health zone)}
\item{area}{Zone area (m2)}
\item{reg_display}{Title case version of \code{reg}}
\item{zone_display}{Title case version of \code{zone}}
}
}
\source{
Legacy (ie. I don't know).
}
\usage{
drc_zone
}
\description{
Health zone level sf data for the Democratic Republic of the Congo.
}
\examples{
ggplot2::ggplot(drc_zone) +
  ggplot2::geom_sf(fill = '#2e4473',
                   color = 'white') +
  ggplot2::theme_void()
}
\keyword{dataset}
