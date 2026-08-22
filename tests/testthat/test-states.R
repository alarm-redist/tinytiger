test_that("tt_states works", {
  skip_on_cran()
  actual <- tt_states()
  expect_s3_class(actual, "sf")
})
