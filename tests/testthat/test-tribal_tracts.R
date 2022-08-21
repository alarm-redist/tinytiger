test_that("tt_tribal_tracts works", {
  actual <- maybe_304(tt_tribal_tracts())
  expect_s3_class(actual, "data.frame")
})
