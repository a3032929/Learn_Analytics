# Calculate reverse percentage for continents

highestview <- max(run3unite$total_views)

#for (i in c(run3unite[22:28]))


colstouse <- run3unite %>% 
  select(contains("_views_percentage"))
colstouse

output <- vector("double", ncol(colstouse))
for (i in seq_along(colstouse)) {
  output[[i]] = highestview / 100 * colstouse[i]
}
output



col_summary <- function(colstouse) {
  output <- vector("double", ncol(colstouse))
  for (i in seq_along(colstouse)) {
    output[[i]] = highestview / 100 * colstouse[i]
  }
  output
}
col_summary(colstouse)
