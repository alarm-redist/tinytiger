test_that("tt_voting_districts works", {
  skip_on_cran()
  actual <- tt_voting_districts("DE", county = "001")
  expect_s3_class(actual, "sf")
})
