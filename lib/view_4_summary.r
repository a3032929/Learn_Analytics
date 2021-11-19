# get absolute value from percentages
view_4_summary <- function(viewstouse) {
  viewstouse <- run4unite %>% 
    select(c(viewed_twentyfive_percent, viewed_fifty_percent, viewed_seventyfive_percent, viewed_onehundred_percent))
  output_view <- as.data.frame(matrix(NA, nrow = 13, ncol = 4))
  for (i in seq_along(viewstouse)) {
    output_view[[i]] = run4unite$total_views / 100 * viewstouse[i]
  }
  output_view <- as.data.frame(output_view)
}
