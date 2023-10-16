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
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_puma("DE"))} # downloads slow on CRAN
tt_puma <- function(state, year = 2021) {

  years_okay(year, 2012:2021)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_puma}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/PUMA/tl_{year}_{st}_puma10.zip")
    target <- glue::glue("tl_{year}_{st}_puma10.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
