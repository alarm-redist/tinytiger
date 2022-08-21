test_that("tt_consolidated_cities works", {
  actual <- maybe_304(tt_consolidated_cities("CT"))
  expect_s3_class(actual, "data.frame")
})
