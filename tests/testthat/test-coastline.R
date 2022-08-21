test_that("tt_coastline works", {
  actual <- maybe_304(tt_coastline())
  expect_s3_class(actual, "data.frame")
})
