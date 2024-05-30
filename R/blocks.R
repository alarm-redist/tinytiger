#' Download TIGER shapes for blocks
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
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_blocks(state = "DE", county = "001"))}
tt_blocks <- function(state, county, year = 2023) {

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_blocks}.")
  }
  state <- state_lookup(state)
  if (!missing(county)) {
    county <- county_lookup(state, county)
  }

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ifelse(year >= 2020, dec_yr, "")
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  }

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/TABBLOCK{url_adj}/tl_{year}_{st}_tabblock{dec_yr}.zip")
    target <- glue::glue("tl_{year}_{st}_tabblock{dec_yr}.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  if (!missing(county)) {
    shp <- shp[shp$COUNTYFP %in% county, ]
  }

  adj_class(shp)
}
