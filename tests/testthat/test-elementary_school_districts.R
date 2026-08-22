test_that("tt_elementary_school_districts works", {
  skip_on_cran()
  actual <- tt_elementary_school_districts("AZ")
  expect_s3_class(actual, "sf")
})
