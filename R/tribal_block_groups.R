#' Download TIGER shapes for Tribal Block Groups
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
#' tt_tribal_block_groups()
tt_tribal_block_groups <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/TBG/tl_{year}_us_tbg.zip")
  target <- paste0("tl_", year, "_us_tbg.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
