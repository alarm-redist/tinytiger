#' Download TIGER shapes for Voting Districts
#'
#' @templateVar state TRUE
#' @templateVar county TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept districts
#'
#' @examples
#' tt_voting_districts('DE', county = '001')
tt_voting_districts <- function(state, county, year = 2021) {

  dec_yr <- year - year %% 10
  cli::cli_inform('Downloading congressional districts for decade {.val {dec_yr}}.')
  dec_yr2 <- dec_yr %% 2000

  if (missing(state)) {
    cli::cli_abort('{.arg state} is required for {.fn tt_roads}.')
  }

  state <- state_lookup(state)
  if (!missing(county)) {
    if (length(state) > 1) {
      cli::cli_abort('{.arg state} may have only one entry for {.fn tt_voting_districts} if {.arg county} is supplied.')
    }
    county <- county_lookup(state, county)
  } else {
    if (dec_yr == 2020) {
      county <- NULL
    } else {
      county <- county_lookup_all(state)
    }
  }

  shp <- lapply(state, function(st) {
    if (is.null(county)) {
      zip_url <- glue::glue('{base_url(dec_yr)}PL/LAYER/VTD/2020/tl_{dec_yr}_{state}_vtd20.zip')
      target <- glue::glue('tl_{dec_yr}_{state}_vtd20.shp')
      tt_download_read(url = zip_url, target_file = target)
    } else {
      do.call(rbind,
              lapply(county, function(cty) {
                zip_url <- glue::glue('{base_url(dec_yr)}{ifelse(dec_yr == 2020, "PL/LAYER", "")}/VTD/{dec_yr}/tl_{dec_yr}_{state}{cty}_vtd{dec_yr2}.zip')
                target <- glue::glue('tl_{dec_yr}_{state}{cty}_vtd{dec_yr2}.shp')
                tt_download_read(url = zip_url, target_file = target)
              })
      )
    }
  })
  shp <- do.call(rbind, shp)

  shp
}
