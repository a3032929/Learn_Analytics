col_7_summary <- function(colstouse) {
  highestview <- max(run7unite$total_views)
  colstouse <- run7unite %>% 
    select(contains("_views_percentage"))
  output <- as.data.frame(matrix(NA, nrow = 13, ncol = 7))
  for (i in seq_along(colstouse)) {
    output[[i]] = highestview / 100 * colstouse[i]
  }
  output <- as.data.frame(output)
}