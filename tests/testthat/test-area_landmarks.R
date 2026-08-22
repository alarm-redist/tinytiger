test_that("tt_area_landmarks. works", {
  skip_on_cran()
  actual <- tt_area_landmarks("DE")
  expect_s3_class(actual, "sf")
})
