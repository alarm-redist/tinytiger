test_that("tt_tract works", {
  skip_on_cran()
  actual <- tt_tracts(state = "DE", county = "001")
  expect_s3_class(actual, "sf")
})
