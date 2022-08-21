test_that("tt_uac works", {
  actual <- maybe_304(tt_uac())
  expect_s3_class(actual, "data.frame")
})
