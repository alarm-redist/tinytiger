# return the expression if it works, otherwise
# return empty data.frame() if it likely a 304, 503, or no data error
# or fail if it is likely not a 304, 503, or no data error
maybe_304 <- function(expr) {
  tryCatch({
  expr
  },
  error = function(e) {
    msg <- conditionMessage(e)
    if (any(grepl("304", e)) | any(grepl("503", e)) | any(grepl("Failure when receiving data", e))) {
      data.frame()
    } else {
      stop(msg)
    }
  })
}
