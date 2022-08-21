test_that("tt_unified_school_districts works", {
  actual <- maybe_304(tt_unified_school_districts("DE"))
  expect_s3_class(actual, "data.frame")
})
