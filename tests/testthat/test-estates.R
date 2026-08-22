test_that("tt_estates works", {
  skip_on_cran()
  actual <- tt_estates()
  expect_s3_class(actual, "sf")
})
