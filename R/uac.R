#' Download TIGER shapes for Urban Area
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept other
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_uac())} # downloads slow on CRAN
#' }
tt_uac <- function(year = 2023) {

  years_okay(year, 2012:2023)

  if (year > 2021) {
    dec_yr <- '20'
  } else{
    dec_yr <- '10'
  }

  zip_url <- glue::glue("{base_url(year)}/UAC/tl_{year}_us_uac{dec_yr}.zip")
  target <- glue::glue("tl_{year}_us_uac{dec_yr}.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
