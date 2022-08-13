#' Download TIGER shapes for Alaska Native Regional Corporation (Alaska)
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept tribal
#'
#' @examples
#' tt_anrc()
tt_anrc <- function(year = 2021) {

  years_okay(year)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ''
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  zip_url <- glue::glue("{base_url(year)}/ANRC{url_adj}/tl_{year}_02_anrc{dec_yr}.zip")
  target <- glue::glue("tl_{year}_02_anrc{dec_yr}.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
