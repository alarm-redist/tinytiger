test_that("tt_county_subdivisions works", {
  skip_on_cran()
  actual <- tt_county_subdivisions("DE")
  expect_s3_class(actual, "sf")
})
