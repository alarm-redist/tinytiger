test_that("tt_TT_FUN works", {
  actual <- maybe_304(tt_TT_FUN)
  expect_s3_class(actual, "data.frame")
})
