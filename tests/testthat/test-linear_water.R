test_that("tt_linear_water works", {
  skip_on_cran()
  actual <- tt_linear_water("DE")
  expect_s3_class(actual, "sf")
})
