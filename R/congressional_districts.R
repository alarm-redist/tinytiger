#' Download TIGER shapes for congressional districts
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
#'\donttest{
#' ## requires internet
#' tt_congressional_districts()
#' }
tt_congressional_districts <- function(state, year = 2021) {

  years_okay(year, 2011:2021)

  cong <- switch(
    as.character(year),
    "2021" = "116", "2020" = "116", "2019" = "116", "2018" = "116",
    "2017" = "115", "2016" = "115", "2015" = "114",  "2014" = "114",
    "2013" = "113", "2012" = "112",  "2011" = "112"
  )
  cli::cli_inform("Downloading congressional districts for Congress {.val {cong}}.")

  zip_url <- glue::glue("{base_url(year)}/CD/tl_{year}_us_cd{cong}.zip")
  target <- paste0("tl_", year, "_us_cd", cong, ".shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  if (!missing(state)) {
    shp <- shp[shp$STATEFP %in% state_lookup(state), ]
  }

  adj_class(shp)
}
