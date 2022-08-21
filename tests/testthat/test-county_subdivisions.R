test_that("tt_county_subdivisions works", {
  actual <- maybe_304(tt_county_subdivisions("DE"))
  expect_s3_class(actual, "data.frame")
})
