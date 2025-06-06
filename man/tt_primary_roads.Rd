% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/primary_roads.R
\name{tt_primary_roads}
\alias{tt_primary_roads}
\title{Download TIGER shapes for Primary Roads}
\usage{
tt_primary_roads(year = 2024)
}
\arguments{
\item{year}{Integer year. Required. 2000 and 2010-2022 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Primary Roads
}
\examples{
\donttest{ # takes > 5 seconds
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_primary_roads())} # downloads slow on CRAN
}
}
\concept{roads}
