test_that("tt_places works", {
  actual <- maybe_304(tt_places("DE"))
  expect_s3_class(actual, "data.frame")
})
