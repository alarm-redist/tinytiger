test_that("tt_voting_districts works", {
  actual <- maybe_304(tt_voting_districts("DE", county = "001"))
  expect_s3_class(actual, "data.frame")
})
