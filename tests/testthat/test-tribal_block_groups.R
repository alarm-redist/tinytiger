test_that("tt_tribal_block_groups works", {
  skip_on_cran()
  actual <- tt_tribal_block_groups()
  expect_s3_class(actual, "sf")
})
