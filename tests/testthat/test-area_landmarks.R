test_that("tt_area_landmarks. works", {
  actual <- maybe_304(tt_area_landmarks("DE"))
  expect_s3_class(actual, "data.frame")
})
