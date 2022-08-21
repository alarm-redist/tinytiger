test_that("tt_new_england_city_divisions works", {
  actual <- maybe_304(tt_new_england_city_divisions())
  expect_s3_class(actual, "data.frame")
})
