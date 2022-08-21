test_that("tt_ai_an_nh_areas works", {
  actual <- maybe_304(tt_ai_an_nh_areas())
  expect_s3_class(actual, 'data.frame')
})
