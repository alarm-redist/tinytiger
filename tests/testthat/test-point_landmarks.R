test_that("tt_point_landmarks works", {
  skip_on_cran()
  actual <- tt_point_landmarks("DE")
  expect_s3_class(actual, "sf")
})
