test_that("tt_anrc works", {
  skip_on_cran()
  actual <- tt_anrc()
  expect_s3_class(actual, 'sf')
})
