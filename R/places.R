#' Download TIGER shapes for Places
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
#' @examples 
#'\dontrun{
#' ## requires internet
#' tt_places("DE")
#' }
tt_places <- function(state, year = 2021) {

  years_okay(year)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_places}.")
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
    zip_url <- glue::glue("{base_url(year)}/PLACE{url_adj}/tl_{year}_{st}_place{dec_yr}.zip")
    target <- glue::glue("tl_{year}_{st}_place{dec_yr}.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
