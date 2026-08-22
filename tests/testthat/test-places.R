test_that("tt_places works", {
  skip_on_cran()
  actual <- tt_places("DE")
  expect_s3_class(actual, "sf")
})
