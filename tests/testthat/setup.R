# return the expression if it works, otherwise
# return empty data.frame() if it likely a 304 error
# or fail if it is likely not a 304 error
maybe_304 <- function(expr) {
  tryCatch({
  expr
  },
  error = function(e) {
    msg <- conditionMessage(e)
    if (any(grepl("304", e))) {
      data.frame()
    } else {
      stop(msg)
    }
  })
}
