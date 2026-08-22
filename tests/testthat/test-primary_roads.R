test_that("tt_primary_roads works", {
  skip_on_cran()
  actual <- tt_primary_roads()
  expect_s3_class(actual, "sf")
})
