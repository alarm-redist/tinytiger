#' Download TIGER shapes for Roads
#'
#' @templateVar state TRUE
#' @templateVar county TRUE
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
#' \donttest{try(tt_roads("DE"))} # downloads slow on CRAN
tt_roads <- function(state, county, year = 2023) {

  years_okay(year, 2010:2023)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_roads}.")
  }
  if (length(state) > 1) {
    cli::cli_abort("{.arg state} may have only one entry for {.fn tt_roads}.")
  }
  state <- state_lookup(state)
  if (!missing(county)) {
    county <- county_lookup(state, county)
  } else {
    county <- county_lookup_all(state)
  }

  shp <- lapply(state, function(st) {
    do.call(rbind,
      lapply(county, function(cty) {
        zip_url <- glue::glue("{base_url(year)}/ROADS/tl_{year}_{state}{cty}_roads.zip")
        target <- glue::glue("tl_{year}_{state}{cty}_roads.shp")
        tt_download_read(url = zip_url, target_file = target)
      })
    )
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
