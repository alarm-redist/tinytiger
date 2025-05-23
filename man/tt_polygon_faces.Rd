% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polygon_faces.R
\name{tt_polygon_faces}
\alias{tt_polygon_faces}
\title{Download TIGER shapes for Polygon Faces}
\usage{
tt_polygon_faces(state, county, year = 2024)
}
\arguments{
\item{state}{FIPS, postal codes, or full names of states.}

\item{county}{FIPS codes or full names of counties. Optional.}

\item{year}{Integer year. Required. 2000 and 2010-2022 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Polygon Faces
}
\examples{
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_polygon_faces("DE", county = "001"))} # downloads slow on CRAN
}
\concept{other}
