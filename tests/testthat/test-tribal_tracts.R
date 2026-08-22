test_that("tt_tribal_tracts works", {
  skip_on_cran()
  actual <- tt_tribal_tracts()
  expect_s3_class(actual, "sf")
})
