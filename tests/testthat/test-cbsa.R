test_that("tt_cbsa works", {
  skip_on_cran()
  actual <- tt_cbsa()
  expect_s3_class(actual, "sf")
})
