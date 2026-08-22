test_that("tt_subbarrio works", {
  skip_on_cran()
  actual <- tt_subbarrios()
  expect_s3_class(actual, "sf")
})
