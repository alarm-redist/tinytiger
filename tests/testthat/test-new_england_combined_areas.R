test_that("tt_new_england_combined_areas works", {
  actual <- maybe_304(tt_new_england_combined_areas())
  expect_s3_class(actual, "data.frame")
})
