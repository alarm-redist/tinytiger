test_that("tt_counties works", {
  actual <- maybe_304(tt_counties(state = "DE"))
  expect_s3_class(actual, "data.frame")
})
