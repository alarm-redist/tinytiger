test_that("tt_consolidated_cities works", {
  skip_on_cran()
  actual <- tt_consolidated_cities("CT")
  expect_s3_class(actual, "sf")
})
