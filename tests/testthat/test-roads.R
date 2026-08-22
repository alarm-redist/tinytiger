test_that("tt_roads works", {
  skip_on_cran()
  actual <- tt_roads(state = "DE", county = "001")
  expect_s3_class(actual, "sf")
})
