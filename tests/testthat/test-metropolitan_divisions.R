test_that("tt_metropolitan_divisions works", {
  actual <- maybe_304(tt_metropolitan_divisions())
  expect_s3_class(actual, "data.frame")
})
