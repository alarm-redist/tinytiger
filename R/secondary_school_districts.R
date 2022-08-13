#' Download TIGER shapes for Secondary School Districts
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept schools
#'
#' @examples
#' tt_secondary_school_districts("AZ")
tt_secondary_school_districts <- function(state, year = 2021) {

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_secondary_school_districts}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/SCSD/tl_{year}_{st}_scsd.zip")
    target <- glue::glue("tl_{year}_{st}_scsd.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  shp
}
