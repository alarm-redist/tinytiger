#' Download TIGER shapes for Public Use Microdata Areas
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept cities
#'
#' @examples \dontrun{
#' tt_consolidated_cities("CT")
#' }
tt_consolidated_cities <- function(state, year = 2021) {

  years_okay(year)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_consolidated_cities}.")
  }
  state <- state_lookup(state)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/CONCITY{url_adj}/tl_{year}_{st}_concity{dec_yr}.zip")
    target <- glue::glue("tl_{year}_{st}_concity{dec_yr}.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}