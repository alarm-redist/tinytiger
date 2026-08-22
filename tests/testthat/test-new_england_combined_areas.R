test_that("tt_new_england_combined_areas works", {
  skip_on_cran()
  actual <- tt_new_england_combined_areas()
  expect_s3_class(actual, "sf")
})
