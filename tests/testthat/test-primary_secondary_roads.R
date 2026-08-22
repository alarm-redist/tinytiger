test_that("tt_primary_secondary_roads works", {
  skip_on_cran()
  actual <- tt_primary_secondary_roads("DE")
  expect_s3_class(actual, "sf")
})
