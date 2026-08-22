test_that("tt_area_water works", {
  skip_on_cran()
  actual <- tt_area_water("DE")
  expect_s3_class(actual, "sf")
})
