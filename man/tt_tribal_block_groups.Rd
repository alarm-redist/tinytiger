% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tribal_block_groups.R
\name{tt_tribal_block_groups}
\alias{tt_tribal_block_groups}
\title{Download TIGER shapes for Tribal Block Groups}
\usage{
tt_tribal_block_groups(year = 2021)
}
\arguments{
\item{year}{Integer year. Required. 2000 and 2010-2021 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Tribal Block Groups
}
\examples{
# Wrapped in try due to false positive 304 errors
try(tt_tribal_block_groups())
}
\concept{tribal}
