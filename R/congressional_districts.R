#' Download TIGER shapes for congressional districts
#'
#' @param state `r template_var_state()`
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept districts
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_congressional_districts())} # downloads slow on CRAN
#' }
tt_congressional_districts <- function(state, year = 2024) {

  years_okay(year, 2011:2024)

  cong <- switch(
    as.character(year),
    "2024" = "119", "2023" = "118", "2022" = "116",
    "2021" = "116", "2020" = "116", "2019" = "116", "2018" = "116",
    "2017" = "115", "2016" = "115", "2015" = "114",  "2014" = "114",
    "2013" = "113", "2012" = "112",  "2011" = "112"
  )
  cli::cli_inform("Downloading congressional districts for Congress {.val {cong}}.")

  if (year >= 2023) {
    # by state only
    if (missing(state)) {
      state <- setdiff(all_state_fips, '74') # no UM
    } else{
      state <- state_lookup(state)
    }

    shp <- lapply(state, function(st) {
      zip_url <- glue::glue("{base_url(year)}/CD/tl_{year}_{st}_cd{cong}.zip")
      target <- paste0("tl_", year, "_", st, "_cd", cong, ".shp")
      shp <- tt_download_read(url = zip_url, target_file = target)
    })
    shp <- do.call(rbind, shp)

  } else {
    zip_url <- glue::glue("{base_url(year)}/CD/tl_{year}_us_cd{cong}.zip")
    target <- paste0("tl_", year, "_us_cd", cong, ".shp")
    shp <- tt_download_read(url = zip_url, target_file = target)

    if (!missing(state)) {
      shp <- shp[shp$STATEFP %in% state_lookup(state), ]
    }
  }



  adj_class(shp)
}
