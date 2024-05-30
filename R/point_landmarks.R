#' Download TIGER shapes for Point Landmarks
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept landmarks
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_point_landmarks("DE"))} # downloads slow on CRAN
tt_point_landmarks <- function(state, year = 2023) {

  years_okay(year, 2010:2023)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_point_landmarks}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/POINTLM/tl_{year}_{st}_pointlm.zip")
    target <- glue::glue("tl_{year}_{st}_pointlm.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
