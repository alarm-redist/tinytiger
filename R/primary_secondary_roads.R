#' Download TIGER shapes for Primary and Secondary Roads
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept roads
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_primary_secondary_roads("DE"))} # downloads slow on CRAN
tt_primary_secondary_roads <- function(state, year = 2024) {

  years_okay(year, 2010:2024)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_primary_secondary_roads}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/PRISECROADS/tl_{year}_{st}_prisecroads.zip")
    target <- glue::glue("tl_{year}_{st}_prisecroads.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
