# run3 reorganise columns
continent_3_pct_ro <- continent_3_pct[,c(8,9,1,2,3,4,5,6,7)]
# remove decimal points
is.num <- sapply(continent_3_pct_ro, is.numeric)
continent_3_pct_ro[is.num] <- lapply(continent_3_pct_ro[is.num], round,0)
# replace NaN with 0
continent_3_pct_ro[is.na(continent_3_pct_ro)] <- 0
cache('continent_3_pct_ro')
