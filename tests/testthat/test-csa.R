test_that("tt_csa works", {
  actual <- maybe_304(tt_csa())
  expect_s3_class(actual, "data.frame")
})
