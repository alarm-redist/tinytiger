test_that("tt_rails works", {
  actual <- maybe_304(tt_rails())
  expect_s3_class(actual, "data.frame")
})
