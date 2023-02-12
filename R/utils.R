pad_str <- function(string, width = 2, pad = "0") {
  if (length(string) != 1) {
    cli::cli_abort("{.fn pad_str} can only take a length one vector.")
  }
  if (nchar(string) < width) {
    string <- paste0(c(rep("0", width - nchar(string)), string), collapse = "")
  }
  as.character(string)
}

adj_class <- function(shp) {
  class(shp) <- c("sf", "tbl_df", "tbl", "data.frame")
  shp
}

years_okay <- function(year, okay = c(2000, 2010:2022)) {
  if (!year %in% okay) {
    cli::cli_abort('{.arg year} must be in {.val {okay}}.')
  }
  invisible(year)
}
