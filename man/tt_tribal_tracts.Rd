% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tribal_tracts.R
\name{tt_tribal_tracts}
\alias{tt_tribal_tracts}
\title{Download TIGER shapes for Tribal Tracts}
\usage{
tt_tribal_tracts(year = 2024)
}
\arguments{
\item{year}{Integer year. Required. 2000 and 2010-2022 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Tribal Tracts
}
\examples{
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_tribal_tracts())}
}
\concept{tribal}
