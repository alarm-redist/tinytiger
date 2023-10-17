test_that("tt_states works", {
  skip_on_cran()
  actual <- maybe_304(tt_states())
  expect_s3_class(actual, "data.frame")
})
