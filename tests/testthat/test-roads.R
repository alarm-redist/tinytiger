test_that("tt_roads works", {
  actual <- maybe_304(tt_roads(state = "DE", county = "001"))
  expect_s3_class(actual, "data.frame")
})
