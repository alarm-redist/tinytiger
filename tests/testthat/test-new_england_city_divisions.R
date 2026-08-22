test_that("tt_new_england_city_divisions works", {
  skip_on_cran()
  actual <- tt_new_england_city_divisions()
  expect_s3_class(actual, "sf")
})
