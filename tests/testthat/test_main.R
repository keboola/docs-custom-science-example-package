test_that("basic run", {
    # source data are prepared in tests directory

    # run the actual function
    main(KBC_DATA_DIR)

    # verify the results
    dfResult <- read.csv(file = file.path(KBC_DATA_DIR, 'out/tables/result.csv'), stringsAsFactors = FALSE)
    expect_equal(
      data.frame(
        id = c(1, 2, 3, 4),
        number = c(10, 20, 30, 40),
        double_number = c(20, 40, 60, 80),
        stringsAsFactors = FALSE
      ),
      dfResult
    )
})
