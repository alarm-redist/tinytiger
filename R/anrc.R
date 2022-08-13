#' Download TIGER shapes for Alaska Native Regional Corporation (Alaska)
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept tribal
#'
#' @examples
#' tt_anrc()
tt_anrc <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/ANRC/tl_{year}_02_anrc.zip")
  target <- paste0("tl_", year, "_02_anrc.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
