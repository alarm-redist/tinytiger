test_that("tt_rails works", {
  skip_on_cran()
  actual <- tt_rails()
  expect_s3_class(actual, "sf")
})
