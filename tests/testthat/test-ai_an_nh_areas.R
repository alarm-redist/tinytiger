test_that("tt_ai_an_nh_areas works", {
  skip_on_cran()
  actual <- tt_ai_an_nh_areas()
  expect_s3_class(actual, 'sf')
})
