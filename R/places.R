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
#' tt_places("DE")
tt_places <- function(state, year = 2021) {

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_places}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/PLACE/tl_{year}_{st}_place.zip")
    target <- glue::glue("tl_{year}_{st}_place.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
