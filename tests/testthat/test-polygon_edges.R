test_that("tt_polygon_edges works", {
  skip_on_cran()
  actual <- tt_polygon_edges("DE", county = "001")
  expect_s3_class(actual, "sf")
})
