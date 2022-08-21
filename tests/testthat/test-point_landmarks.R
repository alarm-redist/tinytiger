test_that("tt_point_landmarks works", {
  actual <- maybe_304(tt_point_landmarks("DE"))
  expect_s3_class(actual, "data.frame")
})
