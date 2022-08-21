test_that("tt_state_leg_upper works", {
  actual <- maybe_304(tt_state_leg_lower("DE"))
  expect_s3_class(actual, "data.frame")
})
