test_that("tt_puma works", {
  skip_on_cran()
  actual <- tt_puma("DE")
  expect_s3_class(actual, "sf")
})
