#' Download TIGER shapes for Primary Roads
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept roads
#'
#' @examples
#' tt_primary_roads()
tt_primary_roads <- function(year = 2021) {

  zip_url <- glue::glue('{base_url(year)}/PRIMARYROADS/tl_{year}_us_primaryroads.zip')
  target <- paste0('tl_', year, '_us_primaryroads.shp')
  shp <- tt_download_read(url = zip_url, target_file = target)

  shp
}
