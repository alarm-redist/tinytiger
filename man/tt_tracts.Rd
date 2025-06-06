% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tract.R
\name{tt_tracts}
\alias{tt_tracts}
\title{Download TIGER shapes for tracts}
\usage{
tt_tracts(state, county, year = 2024)
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
Download TIGER shapes for tracts
}
\examples{
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_tracts(state = "DE", county = "001"))} # downloads slow on CRAN
}
\concept{spine}
