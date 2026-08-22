test_that("tt_unified_school_districts works", {
  skip_on_cran()
  actual <- tt_unified_school_districts("DE")
  expect_s3_class(actual, "sf")
})
