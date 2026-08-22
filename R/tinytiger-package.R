#' tinytiger: Lightweight Interface to TIGER/Line Shapefiles
#'
#' Download geographic shapes from the [United States Census Bureau TIGER/Line
#' Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html).
#'
#' By default, downloads show a progress bar in interactive sessions and are
#' quiet in non-interactive sessions. Override this with
#' `options(tinytiger.curl_quiet = TRUE)` or `FALSE`.
#'
#' Downloads will go to `options(tinytiger.cache_dir)` if it is set. If it is not,
#' and `rappdirs` is installed, downloads will be cached between sessions in
#' `rappdirs::user_cache_dir("tinytiger")`.
#' If it is not installed, or if `options(tinytiger.use_cache = FALSE)`, then the
#' cache will be in a temporary directory that does not persist between
#' sessions.
#'
#' @keywords internal
"_PACKAGE"
