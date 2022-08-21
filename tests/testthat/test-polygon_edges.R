test_that("tt_polygon_edges works", {
  actual <- maybe_304(tt_polygon_edges("DE", county = "001"))
  expect_s3_class(actual, "data.frame")
})
