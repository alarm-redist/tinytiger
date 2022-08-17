test_that('downloads work', {
  skip_on_cran()
  skip_on_ci()
  testthat::skip_if(Sys.info()['login'] == 'chris')

  expect_s3_class(tt_states(), 'sf')
  expect_s3_class(tt_coastline(), 'sf')
  expect_s3_class(tt_counties(state = 'Wash'), 'sf')
  expect_s3_class(tt_counties(state = 'Iowa', year = 2016), 'sf')
  expect_s3_class(tt_voting_districts('DE', year = 2021), 'sf')
  expect_s3_class(tt_voting_districts('DE', year = 2010), 'sf')
})
