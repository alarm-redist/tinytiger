test_that("tt_linear_water works", {
  actual <- maybe_304(tt_linear_water("DE"))
  expect_s3_class(actual, "data.frame")
})
