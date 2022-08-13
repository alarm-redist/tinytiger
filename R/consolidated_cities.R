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
#' @examples
#' tt_consolidated_cities("CT")
tt_consolidated_cities <- function(state, year = 2021) {

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_consolidated_cities}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/CONCITY/tl_{year}_{st}_concity.zip")
    target <- glue::glue("tl_{year}_{st}_concity.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  shp
}
