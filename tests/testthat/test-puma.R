test_that("tt_puma works", {
  actual <- maybe_304(tt_puma("DE"))
  expect_s3_class(actual, "data.frame")
})
