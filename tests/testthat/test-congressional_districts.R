test_that("tt_congressional_districts works", {
  actual <- maybe_304(tt_congressional_districts())
  expect_s3_class(actual, "data.frame")
})
