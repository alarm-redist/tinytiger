test_that("tt_elementary_school_districts works", {
  actual <- maybe_304(tt_elementary_school_districts("AZ"))
  expect_s3_class(actual, "data.frame")
})
