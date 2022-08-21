test_that("tt_tribal_block_groups works", {
  actual <- maybe_304(tt_tribal_block_groups())
  expect_s3_class(actual, "data.frame")
})
