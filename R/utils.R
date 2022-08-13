pad_str <- function(string, width = 2, pad = "0") {
  if (length(string) != 1) {
    cli::cli_abort("{.fn pad_str} can only take a length one vector.")
  }
  if (nchar(string) < width) {
    string <- paste0(c(rep("0", width - nchar(string)), string), collapse = "")
  }
  string
}

adj_class <- function(shp) {
  class(shp) <- c("sf", "tbl_df", "tbl", "data.frame")
  shp
}
