test_that("tt_anrc works", {
  actual <- maybe_304(tt_anrc())
  expect_s3_class(actual, 'data.frame')
})
