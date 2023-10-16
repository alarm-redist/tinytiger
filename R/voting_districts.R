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
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_voting_districts("DE", county = "001"))} # downloads slow on CRAN
tt_voting_districts <- function(state, county, year = 2022) {

  year <- year - (year %% 10)
  cli::cli_inform("Downloading voting districts for decade {.val {year}}.")
  dec_yr <- pad_str(year %% 2000)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_voting_districts}.")
  }

  state <- state_lookup(state)
  if (!missing(county)) {
    if (length(state) > 1) {
      cli::cli_abort("{.arg state} may have only one entry for {.fn tt_voting_districts} if {.arg county} is supplied.")
    }
    county <- county_lookup(state, county)
  } else {
    if (year == 2020) {
      county <- NULL
    } else {
      county <- county_lookup_all(state)
      if (state == "02") {
        county <- c("013", "016", "020", "050", "060", "068", "070", "090", "100",
                    "105", "110", "122", "130", "150", "164", "170", "180", "185",
                    "188", "195", "198", "220", "230", "240", "261", "270", "275",
                    "282", "290")
      }
    }
  }

  url_adj <- ifelse(year == 2020, "PL/LAYER", "")
  yr_fldr <- "2020"
  if (year <= 2010) {
    dec_yr <- pad_str(dec_yr)
    yr_fldr <- paste0("20", dec_yr)
    year <- 2010
  }

  shp <- lapply(state, function(st) {
    if (is.null(county)) {
      zip_url <- glue::glue("{base_url(year)}PL/LAYER/VTD/2020/tl_{year}_{state}_vtd20.zip")
      target <- glue::glue("tl_{year}_{state}_vtd20.shp")
      tt_download_read(url = zip_url, target_file = target)
    } else {
      do.call(rbind,
        lapply(county, function(cty) {
          zip_url <- glue::glue("{base_url(year)}{url_adj}/VTD/{yr_fldr}/tl_{year}_{state}{cty}_vtd{dec_yr}.zip")
          target <- glue::glue("tl_{year}_{state}{cty}_vtd{dec_yr}.shp")
          tt_download_read(url = zip_url, target_file = target)
        })
      )
    }
  })
  shp <- do.call(rbind, shp)

  adj_class(shp)
}
