#' Download TIGER shapes for counties
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept spine
#'
#' @examples
#' tt_counties(state = "DE")
tt_counties <- function(state, year = 2021) {
  zip_url <- glue::glue("{base_url(year)}/COUNTY/tl_{year}_us_county.zip")
  target <- paste0("tl_", year, "_us_county.shp")

  shp <- tt_download_read(url = zip_url, target_file = target)

  if (!missing(state)) {
    shp <- shp[shp$STATEFP %in% state_lookup(state), ]
  }

  adj_class(shp)
}
