% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anrc.R
\name{tt_anrc}
\alias{tt_anrc}
\title{Download TIGER shapes for Alaska Native Regional Corporation (Alaska)}
\usage{
tt_anrc(year = 2024)
}
\arguments{
\item{year}{Integer year. Required. 2000 and 2010-2022 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Alaska Native Regional Corporation (Alaska)
}
\examples{
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_anrc())} # downloads slow on CRAN
}
\concept{tribal}
