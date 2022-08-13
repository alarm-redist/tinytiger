#' Download TIGER shapes for block groups
#'
#' @templateVar state TRUE
#' @templateVar county TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept spine
#'
#' @examples
#' tt_block_groups(state = "DE", county = "001")
tt_block_groups <- function(state, county, year = 2021) {

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_block_groups}.")
  }
  state <- state_lookup(state)
  if (!missing(county)) {
    county <- county_lookup(state, county)
  }

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/BG/tl_{year}_{st}_bg.zip")
    target <- glue::glue("tl_{year}_{st}_bg.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  if (!missing(county)) {
    shp <- shp[shp$COUNTYFP %in% county, ]
  }

  shp
}
