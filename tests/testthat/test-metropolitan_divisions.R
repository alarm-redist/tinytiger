test_that("tt_metropolitan_divisions works", {
  skip_on_cran()
  actual <- tt_metropolitan_divisions()
  expect_s3_class(actual, "sf")
})
