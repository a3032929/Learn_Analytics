# reorganise columns
continent_pct_ro <- continent_pct[,c(8,9,1,2,3,4,5,6,7)]
# remove decimal points

is.num <- sapply(continent_pct_ro, is.numeric)
continent_pct_ro[is.num] <- lapply(continent_pct_ro[is.num], round,0)

# replace NaN with 0
continent_pct_ro[is.na(continent_pct_ro)] <- 0




#continent_pct_ro2 <- continent_pct[,c(8,9,1,2,3,4,5,6,7)] %>% 
 # is.num <- sapply(continent_pct, is.numeric) %>% 
  #continent_pct[is.num] <- lapply(continent_pct[is.num], round,0) %>% 
  #continent_pct[is.na(continent_pct)] <- 0


