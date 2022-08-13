#' Download TIGER shapes for states
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept spine
#'
#' @examples
#' tt_states()
tt_states <- function(year = 2021) {
  zip_url <- glue::glue("{base_url(year)}/STATE/tl_{year}_us_state.zip")
  target <- paste0("tl_", year, "_us_state.shp")
  tt_download_read(url = zip_url, target_file = target)
}
