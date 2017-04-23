library(testthat)

test_that("basic_tests", {
  year_array <- c("2000", "2016", "2036", "2050", "2090")
  for(i in year_array)
  {
    file_name <- MyFirstPackage::make_filename(i)
    expect_that(file_name, equals(paste0("accident_",i,".csv.bz2")))
  }
})

