#' Download TIGER shapes for Polygon Faces
#'
#' @templateVar state TRUE
#' @templateVar county TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept other
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_polygon_faces("DE", county = "001"))} # downloads slow on CRAN
tt_polygon_faces <- function(state, county, year = 2024) {

  years_okay(year, 2010:2024)

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
        zip_url <- glue::glue("{base_url(year)}/FACES/tl_{year}_{state}{cty}_faces.zip")
        target <- glue::glue("tl_{year}_{state}{cty}_faces.shp")
        tt_download_read(url = zip_url, target_file = target)
      })
    )
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
