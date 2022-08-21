tt_use_test <- function(name = NULL, open = rlang::is_interactive()) {
  if (!usethis:::uses_testthat()) {
    usethis:::use_testthat_impl()
  }
  name <- name %||% usethis:::get_active_r_file(path = "R")
  fn <- name
  name <- paste0("test-", name)
  name <- usethis:::slug(name, "R")
  usethis:::check_file_name(name)
  path <- fs::path("tests", "testthat", name)
  if (!fs::file_exists(path)) {
    usethis::use_template("test-tinytiger.R", save_as = path, open = FALSE, package = 'tinytiger')
  }
  if (!is.null(fn)) {
    fn <- stringr::str_sub(fn, 1, -3)
    lines <- readLines(path)
    lines <- stringr::str_replace_all(lines, 'TT_FUN', fn)
    fn_file <- readLines(paste0("R/", usethis:::get_active_r_file(path = "R")))
    fn_vals <- stringr::str_sub(fn_file[stringr::str_detect(fn_file, fn)][1], 4, -3)
    lines[stringr::str_detect(lines, fn)][2] <- stringr::str_replace(
      lines[stringr::str_detect(lines, fn)][2], pattern = paste0('tt_', fn),
      replacement = fn_vals
    )
    writeLines(lines, path)
  }
  usethis::edit_file(usethis::proj_path(path), open = open)
}
