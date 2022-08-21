#' Download TIGER shapes for Zip Code Tabulation Areas
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
#' \donttry{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' try({tt_zcta()})
#' }
tt_zcta <- function(year = 2021) {

  years_okay(year, c(2000, 2010, 2012:2021))

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year >= 2020) {
    url_adj <- "20"
  }
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  }

  zip_url <- glue::glue("{base_url(year)}/ZCTA5{url_adj}/tl_{year}_us_zcta5{dec_yr}.zip")
  target <- glue::glue("tl_{year}_us_zcta5{dec_yr}.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
