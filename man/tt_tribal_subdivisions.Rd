% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tribal_subdivisions.R
\name{tt_tribal_subdivisions}
\alias{tt_tribal_subdivisions}
\title{Download TIGER shapes for American Indian Tribal Subdivision National}
\usage{
tt_tribal_subdivisions(year = 2024)
}
\arguments{
\item{year}{Integer year. Required. 2000 and 2010-2022 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for American Indian Tribal Subdivision National
}
\examples{
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_tribal_subdivisions())}
}
\concept{tribal}
