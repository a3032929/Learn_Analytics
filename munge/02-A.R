# Calculate reverse percentage for continents

# highestview <- max(run3unite$total_views)

# colstouse <- run3unite %>% 
  # select(contains("_views_percentage"))
# colstouse

#############################
# output <- as.data.frame(matrix(NA, nrow = 13, ncol = 7))
# for (i in seq_along(colstouse)) {
  # output[[i]] = highestview / 100 * colstouse[i]
# }
# output <- as.data.frame(output)

# output
#############################
# function to calculate value of viewers from each continent and each video

col_summary <- function(colstouse) {
  highestview <- max(run3unite$total_views)
  colstouse <- run3unite %>% 
    select(contains("_views_percentage"))
  output <- as.data.frame(matrix(NA, nrow = 13, ncol = 7))
  for (i in seq_along(colstouse)) {
    output[[i]] = highestview / 100 * colstouse[i]
  }
  output <- as.data.frame(output)
}



