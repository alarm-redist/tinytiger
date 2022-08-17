#' Download TIGER Shapes for Linear Water
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
#' @examples \dontrun{
#' tt_linear_water("DE")
#' }
tt_linear_water <- function(state, county, year = 2021) {

  years_okay(year, 2010:2021)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_linear_water}.")
  }
  if (length(state) > 1) {
    cli::cli_abort("{.arg state} may have only one entry for {.fn tt_linear_water}.")
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
        zip_url <- glue::glue("{base_url(year)}/LINEARWATER/tl_{year}_{state}{cty}_linearwater.zip")
        target <- glue::glue("tl_{year}_{state}{cty}_linearwater.shp")
        tt_download_read(url = zip_url, target_file = target)
      })
    )
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
