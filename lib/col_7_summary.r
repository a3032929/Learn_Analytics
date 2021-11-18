# get absolute value from percentages
col_7_summary <- function(colstouse) {
  colstouse <- run7unite %>% 
    select(contains("_views_percentage"))
  output <- as.data.frame(matrix(NA, nrow = 13, ncol = 7))
  for (i in seq_along(colstouse)) {
    output[[i]] = run7unite$total_views / 100 * colstouse[i]
  }
  output <- as.data.frame(output)
}
