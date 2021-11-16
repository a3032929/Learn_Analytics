# run4 reorganise columns
continent_4_pct_ro <- continent_4_pct[,c(8,9,1,2,3,4,5,6,7)]
# remove decimal points
is.num <- sapply(continent_4_pct_ro, is.numeric)
continent_4_pct_ro[is.num] <- lapply(continent_4_pct_ro[is.num], round,0)
# replace NaN with 0
continent_4_pct_ro[is.na(continent_4_pct_ro)] <- 0
cache('continent_4_pct_ro')


# run5 reorganise columns
continent_5_pct_ro <- continent_5_pct[,c(8,9,1,2,3,4,5,6,7)]
# remove decimal points
is.num <- sapply(continent_5_pct_ro, is.numeric)
continent_5_pct_ro[is.num] <- lapply(continent_5_pct_ro[is.num], round,0)
# replace NaN with 0
continent_5_pct_ro[is.na(continent_5_pct_ro)] <- 0
cache('continent_5_pct_ro')


# run6 reorganise columns
continent_6_pct_ro <- continent_6_pct[,c(8,9,1,2,3,4,5,6,7)]
# remove decimal points
is.num <- sapply(continent_6_pct_ro, is.numeric)
continent_6_pct_ro[is.num] <- lapply(continent_6_pct_ro[is.num], round,0)
# replace NaN with 0
continent_6_pct_ro[is.na(continent_6_pct_ro)] <- 0
cache('continent_6_pct_ro')


# run7 reorganise columns
continent_7_pct_ro <- continent_7_pct[,c(8,9,1,2,3,4,5,6,7)]
# remove decimal points
is.num <- sapply(continent_7_pct_ro, is.numeric)
continent_7_pct_ro[is.num] <- lapply(continent_7_pct_ro[is.num], round,0)
# replace NaN with 0
continent_7_pct_ro[is.na(continent_7_pct_ro)] <- 0
cache('continent_7_pct_ro')