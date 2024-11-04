#' Download TIGER shapes for Public Use Microdata Areas
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept cities
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_puma("DE"))} # downloads slow on CRAN
tt_puma <- function(state, year = 2024) {

  years_okay(year, 2012:2024)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_puma}.")
  }
  state <- state_lookup(state)

  if (year > 2021) {
    dec_yr <- '20'
  } else{
    dec_yr <- '10'
  }
  if (year >= 2024) {
    url_add <- '20'
  } else {
    url_add <- ''
  }

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/PUMA{url_add}/tl_{year}_{st}_puma{dec_yr}.zip")
    target <- glue::glue("tl_{year}_{st}_puma{dec_yr}.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
