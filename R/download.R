#' Download a file
#'
#' Backend-agnostic (currently `curl`)
#'
#' @param url a URL
#' @param path a file path
#' @param overwrite should the file at path be overwritten if it already exists? Default is FALSE.
#' @param quiet should output and progress bar be suppressed?
#'
#' @returns the `curl` request
#'
#' @noRd
tt_download <- function(url, path, overwrite = FALSE, quiet = FALSE) {
  dir <- dirname(path)
  if (!dir.exists(dir)) dir.create(dir, recursive = TRUE)
  if (!file.exists(path) || overwrite) {
    curl::curl_download(url, path, quiet = quiet)
  } else {
    cli::cli_inform(c("File already downloaded at {.path {path}}",
      ">" = "Set {.arg overwrite = TRUE} to overwrite."
    ))
    list(status_code = 200)
  }
}

#' Download and a read a shape file
#'
#'
#' @param url a URL
#' @param target_file the short name of the file to read
#' @param overwrite should the file at path be overwritten if it already exists? Default is FALSE.
#' @param quiet should output and progress bar be suppressed?
#'
#' @return an sf data.frame
#'
#' @noRd
tt_download_read <- function(url, target_file, overwrite = FALSE,
                             quiet = getOption("tinytiger.curl_quiet", FALSE)) {
  base_path <- tt_download_path()
  base_name <- basename(url)
  subdir <- substr(base_name, 1, nchar(base_name) - 4)
  target_file <- file.path(base_path, subdir, target_file)
  if (!overwrite && file.exists(target_file)) {
    return(sf::st_read(target_file, quiet = TRUE))
  }
  tf <- file.path(base_path, base_name)
  tt_download(url, tf, overwrite, quiet = quiet)
  utils::unzip(tf, exdir = file.path(base_path, subdir))
  file.remove(tf)
  sf::st_read(target_file, quiet = TRUE)
}

#' Figure out where to download things
#'
#' @noRd
tt_download_path <- function() {
  user_cache <- getOption("tinytiger.cache_dir")
  if (!is.null(user_cache)) {
    user_cache
  } else if (getOption("tinytiger.use_cache", TRUE) &&
    requireNamespace("rappdirs", quietly = TRUE)) {
    rappdirs::user_cache_dir("tinytiger")
  } else {
    tempdir()
  }
}
