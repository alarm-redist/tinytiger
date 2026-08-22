test_that("tt_congressional_districts works", {
  skip_on_cran()
  actual <- tt_congressional_districts(state = '01')
  expect_s3_class(actual, "sf")
})
