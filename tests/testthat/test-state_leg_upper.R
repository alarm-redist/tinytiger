test_that("tt_state_leg_upper works", {
  skip_on_cran()
  actual <- tt_state_leg_lower("DE")
  expect_s3_class(actual, "sf")
})
