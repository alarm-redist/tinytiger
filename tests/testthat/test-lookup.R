test_that("state lookup works", {
  expect_equal(state_lookup("WA"), "53")
  expect_equal(state_lookup("Washington"), "53")
  expect_equal(state_lookup("Wash"), "53")
  expect_error(state_lookup("New"), "could not be matched")
  expect_equal(state_lookup("New Jer"), "34")
})
