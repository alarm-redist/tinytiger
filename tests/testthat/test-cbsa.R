test_that("tt_cbsa works", {
  actual <- maybe_304(tt_cbsa())
  expect_s3_class(actual, "data.frame")
})
