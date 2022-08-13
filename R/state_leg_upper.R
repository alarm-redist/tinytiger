#' Download TIGER shapes for upper state legislative districts
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept districts
#'
#' @examples
#' tt_state_leg_lower("DE")
tt_state_leg_upper <- function(state, year = 2021) {

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_state_leg_upper}.")
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/SLDU/tl_{year}_{st}_sldu.zip")
    target <- glue::glue("tl_{year}_{st}_sldu.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  shp
}
