#' Download TIGER shapes for states
#'
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept spine
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_states())}
tt_states <- function(year = 2025) {

  years_okay(year)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  zip_url <- glue::glue("{base_url(year)}/STATE{url_adj}/tl_{year}_us_state{dec_yr}.zip")
  target <- glue::glue("tl_{year}_us_state{dec_yr}.shp")
  adj_class(tt_download_read(url = zip_url, target_file = target))
}
