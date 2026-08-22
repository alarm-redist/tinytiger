test_that("tt_counties works", {
  skip_on_cran()
  actual <- tt_counties(state = "DE")
  expect_s3_class(actual, "sf")
})
