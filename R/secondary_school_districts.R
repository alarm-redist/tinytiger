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
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_secondary_school_districts("AZ"))} # downloads slow on CRAN
tt_secondary_school_districts <- function(state, year = 2023) {

  years_okay(year)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_secondary_school_districts}.")
  }
  state <- state_lookup(state)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/SCSD{url_adj}/tl_{year}_{st}_scsd{dec_yr}.zip")
    target <- glue::glue("tl_{year}_{st}_scsd{dec_yr}.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
