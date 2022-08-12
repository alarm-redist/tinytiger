#' Download TIGER shapes for Elementary School Districts
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
#' tt_elementary_school_districts('AZ')
tt_elementary_school_districts <- function(state, year = 2021) {

  if (missing(state)) {
    cli::cli_abort('{.arg state} is required for {.fn tt_elementary_school_districts}.')
  }
  state <- state_lookup(state)

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue('{base_url(year)}/ELSD/tl_{year}_{st}_elsd.zip')
    target <- glue::glue('tl_{year}_{st}_elsd.shp')
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call('rbind', shp)

  shp
}
