% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/consolidated_cities.R
\name{tt_consolidated_cities}
\alias{tt_consolidated_cities}
\title{Download TIGER shapes for Public Use Microdata Areas}
\usage{
tt_consolidated_cities(state, year = 2021)
}
\arguments{
\item{state}{FIPS, postal codes, or full names of states.}

\item{year}{Integer year. Required. 2000 and 2010-2021 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Public Use Microdata Areas
}
\examples{
# Wrapped in try due to false positive 304 errors
try(tt_consolidated_cities("CT"))
}
\concept{cities}
