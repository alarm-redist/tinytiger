test_that("tt_csa works", {
  skip_on_cran()
  actual <- tt_csa()
  expect_s3_class(actual, "sf")
})
