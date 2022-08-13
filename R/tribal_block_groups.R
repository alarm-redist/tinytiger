#' Download TIGER shapes for Tribal Block Groups
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
#' tt_tribal_block_groups()
tt_tribal_block_groups <- function(year = 2021) {

  years_okay(year, 2010:2021)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  zip_url <- glue::glue("{base_url(year)}/TBG{url_adj}/tl_{year}_us_tbg{dec_yr}.zip")
  target <- glue::glue("tl_{year}_us_tbg{dec_yr}.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
