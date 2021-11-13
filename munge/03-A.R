# Calculate percentage viewed from each continent throughout course

#outputpct <- df
#for (i in 1:ncol(df)) {
  #highvalue <- max(df[, i])
  #outputpct[, i] <- outputpct[, i]/highvalue * 100
#}


outputpct2 <- df / df %>% lapply(max) * 100

outputpct2

