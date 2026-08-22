test_that("tt_block_groups works", {
  skip_on_cran()
  actual <- tt_block_groups(state = "DE", county = "001")
  expect_s3_class(actual, "sf")
})
