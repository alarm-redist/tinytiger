test_that("tt_block_groups works", {
  actual <- maybe_304(tt_block_groups(state = "DE", county = "001"))
  expect_s3_class(actual, "data.frame")
})
