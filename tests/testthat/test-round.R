context("test-round.R")

test_that("rounding up works", {
  expect_equal(round_up(1234.5), 1235)
  expect_equal(round_up(0.185, 2), 0.19)
})

test_that("oom works", {
  cases <- tibble::tribble(
    ~center, ~se, ~oom, ~center_exp, ~se_exp,
    1.2345, 0.1, 2, "1.23", "0.10",
    1.2345, 0.099, 2, "1.23", "0.10",
    1.2345, 0.199, 1, "1.2", "0.2",
    1.2345, 0.149, 2, "1.23", "0.15",
    1.2345, 0.99, 1, "1.2", "1.0",
    1234.5, 10, 0, "1235", "10",
    1234.5, 20, -1, "1230", "20",
    1234.5, 100, -1, "1230", "100",
    1234.5, 200, -2, "1200", "200",
    1234.5, 1, 1, "1234.5", "1.0",
    1234.5, 1.49, 1, "1234.5", "1.5",
    1234.5, 1.5, 1, "1234.5", "1.5",
    1234.5, 1.95, 0, "1235", "2",
    1234.5, 2, 0, "1235", "2",
    0.999999, 0.123, 2, "1.00", "0.12",
    -0.001, 0.1, 2, "0.00", "0.10"
  )
  expect_equal(oom(-0.24), 1)
  expect_equal(oom(cases$se), cases$oom)
  for (i in 1:nrow(cases)) {
    expect_match(
      format_oom(!!cases[[i, "se"]], !!cases[[i, "oom"]]),
      cases[[i, "se_exp"]]
    )
  }
  for (i in 1:nrow(cases)) {
    expect_match(
      format_oom(!!cases[[i, "center"]], !!cases[[i, "oom"]]),
      cases[[i, "center_exp"]]
    )
  }
})
