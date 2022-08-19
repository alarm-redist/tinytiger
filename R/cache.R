#' Work with the the `tinytiger` cache
#'
#' Functions to inspect and clear the cache. If the cache is not enabled, uses a
#' temporary directory.
#'
#' @returns For `tt_cache_size()`, tthe size in bytes, invisbly
#'
#' @examples
#' tt_cache_size()
#'
#' @concept other
#' @export
#' @rdname tt_cache
tt_cache_size <- function() {
  files <- list.files(tt_download_path(), recursive = TRUE, full.names = TRUE)
  x <- sum(vapply(files, file.size, numeric(1)))
  class(x) <- "object_size"
  message(format(x, unit = "auto"))
  invisible(as.numeric(x))
}

#' @returns For `tt_cache_clear()`, the path to the cache, invisbly.
#'
#' @examples
#' tt_cache_clear()
#'
#' @export
#' @rdname tt_cache
tt_cache_clear <- function() {
  path <- tt_download_path()
  del <- utils::askYesNo(
    msg = "Are you sure? All recursive directories will be deleted.",
    default = FALSE
  )
  if (del) unlink(path, recursive = TRUE)
  invisible(path)
}

#' @returns For `tt_cache_path()`, the path to the cache
#'
#' @examples
#' tt_cache_path()
#'
#' @export
#' @rdname tt_cache
tt_cache_path <- function() {
  tt_download_path()
}
