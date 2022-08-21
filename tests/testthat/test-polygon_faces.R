test_that("tt_polygon_faces works", {
  actual <- maybe_304(tt_polygon_faces("DE", county = "001"))
  expect_s3_class(actual, "data.frame")
})
