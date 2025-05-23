% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/point_landmarks.R
\name{tt_point_landmarks}
\alias{tt_point_landmarks}
\title{Download TIGER shapes for Point Landmarks}
\usage{
tt_point_landmarks(state, year = 2024)
}
\arguments{
\item{state}{FIPS, postal codes, or full names of states.}

\item{year}{Integer year. Required. 2000 and 2010-2022 are currently supported.}
}
\value{
sf data.frame
}
\description{
Download TIGER shapes for Point Landmarks
}
\examples{
# Wrapped in try due to false positive 304 errors
\donttest{try(tt_point_landmarks("DE"))} # downloads slow on CRAN
}
\concept{landmarks}
