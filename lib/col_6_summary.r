col_6_summary <- function(colstouse) {
  colstouse <- run6unite %>% 
    select(contains("_views_percentage"))
  output <- as.data.frame(matrix(NA, nrow = 13, ncol = 7))
  for (i in seq_along(colstouse)) {
    output[[i]] = run6unite$total_views / 100 * colstouse[i]
  }
  output <- as.data.frame(output)
}
