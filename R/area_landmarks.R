#' Download TIGER shapes for Area Landmarks
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept roads
#'
#' @examples
#' tt_area_landmarks('DE')
tt_area_landmarks <- function(state, year = 2021) {

  if (missing(state)) {
    cli::cli_abort('{.arg state} is required for {.fn tt_area_landmarks}.')
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue('{base_url(year)}/AREALM/tl_{year}_{st}_arealm.zip')
    target <- glue::glue('tl_{year}_{st}_arealm.shp')
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call('rbind', shp)

  shp
}
