test_that("tt_tract works", {
  actual <- maybe_304(tt_tracts(state = "DE", county = "001"))
  expect_s3_class(actual, "data.frame")
})
