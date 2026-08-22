test_that("tt_polygon_faces works", {
  skip_on_cran()
  actual <- tt_polygon_faces("DE", county = "001")
  expect_s3_class(actual, "sf")
})
