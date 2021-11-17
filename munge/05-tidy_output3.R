# run3 reorganise columns
# remove decimal points
continent_3_pct_ro <- continent_3_pct[,c(8,9,1,2,3,4,5,6,7)] %>% 
  mutate_if(is.numeric, round) 

# replace NaN with 0
continent_3_pct_ro[is.na(continent_3_pct_ro)] <- 0
cache('continent_3_pct_ro')
