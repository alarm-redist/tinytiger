test_that("tt_coastline works", {
  skip_on_cran()
  actual <- tt_coastline()
  expect_s3_class(actual, "sf")
})
