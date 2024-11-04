#' Download TIGER Shapes for Area Water
#'
#' @templateVar state TRUE
#' @templateVar county TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept water
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_area_water("DE"))} # downloads slow on CRAN
tt_area_water <- function(state, county, year = 2024) {

  years_okay(year, 2010:2024)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_area_water}.")
  }
  if (length(state) > 1) {
    cli::cli_abort("{.arg state} may have only one entry for {.fn tt_area_water}.")
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
        zip_url <- glue::glue("{base_url(year)}/AREAWATER/tl_{year}_{state}{cty}_areawater.zip")
        target <- glue::glue("tl_{year}_{state}{cty}_areawater.shp")
        tt_download_read(url = zip_url, target_file = target)
      })
    )
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
