test_that("tt_estates works", {
  actual <- maybe_304(tt_estates())
  expect_s3_class(actual, "data.frame")
})
