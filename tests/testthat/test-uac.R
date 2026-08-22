test_that("tt_uac works", {
  skip_on_cran()
  actual <- tt_uac()
  expect_s3_class(actual, "sf")
})
