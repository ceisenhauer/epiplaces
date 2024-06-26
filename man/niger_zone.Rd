% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_descriptions.R
\docType{data}
\name{niger_zone}
\alias{niger_zone}
\title{Niger (Districts)}
\format{
A \verb{Simple feature collection} with 72 features and 10 fields:
\describe{
\item{adm0_iso3}{ISO Country Code}
\item{adm0_sub}{Country Subset (All, North, South, etc.)}
\item{adm0_name}{Country Name}
\item{adm1_name}{Region Name}
\item{adm2_name}{District Name}
\item{adm2_pop}{District Population}
\item{pcode}{P Code}
\item{lon}{Centerpoint Longitude}
\item{lat}{Centerpoint Latitude}
\item{source}{Data Source}
}
}
\source{
Epicentre DS.
}
\usage{
niger_zone
}
\description{
Admin level 2 (district) level sf data for Niger.
}
\examples{
ggplot2::ggplot(niger_zone) +
  ggplot2::geom_sf(fill = '#2e4473',
                   color = 'white') +
  ggplot2::theme_void()
}
\keyword{dataset}
