#' Download a file
#'
#' Backend-agnostic (currently `curl`)
#'
#' @param url a URL
#' @param path a file path
#' @param overwrite should the file at path be overwritten if it already exists? Default is FALSE.
#'
#' @returns the `curl` request
#'
#' @noRd
tt_download <- function(url, path, overwrite = FALSE) {
  dir <- dirname(path)
  if (!dir.exists(dir)) dir.create(dir, recursive = TRUE)
  if (!file.exists(path) || overwrite) {
    curl::curl_download(url = url, path)
  } else {
    cli::cli_inform(c("File already downloaded at {.path {path}}",
                      ">"="Set {.arg overwrite = TRUE} to overwrite."))
    list(status_code = 200)
  }
}


#' Download and a read a shape file
#'
#'
#' @param url a URL
#' @param target_file the short name of the file to read
#' @param overwrite should the file at path be overwritten if it already exists? Default is FALSE.
#'
#' @return an sf data.frame
#'
#' @noRd
tt_download_read <- function(url, target_file, overwrite = FALSE) {
  target_file <- file.path(tempdir(), target_file)
  if (!overwrite && file.exists(target_file)) {
    return(sf::st_read(target_file, quiet = TRUE))
  }
  tf <- tempfile(fileext = ".zip")
  tt_download(url, tf, overwrite)
  utils::unzip(tf, exdir = tempdir())
  sf::st_read(target_file, quiet = TRUE)
}
