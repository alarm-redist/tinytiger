test_that("tt_area_water works", {
  actual <- maybe_304(tt_area_water("DE"))
  expect_s3_class(actual, "data.frame")
})
