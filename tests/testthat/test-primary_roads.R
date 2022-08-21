test_that("tt_primary_roads works", {
  actual <- maybe_304(tt_primary_roads())
  expect_s3_class(actual, "data.frame")
})
