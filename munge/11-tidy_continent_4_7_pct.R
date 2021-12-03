# reorganise columns of df 'continent_4_pct' to 'continent_7_pct', remove decimal points and replace NaN to 0, assign to 'continent_4_pct_ro' to 'continent_7_pct_ro'.

# run4 reorganise columns
# remove decimal points
continent_4_pct_ro <- continent_4_pct[,c(8,9,1,2,3,4,5,6,7)]%>% 
  mutate_if(is.numeric, round)
# replace NaN with 0
continent_4_pct_ro[is.na(continent_4_pct_ro)] <- 0
cache('continent_4_pct_ro')


# run5 reorganise columns
continent_5_pct_ro <- continent_5_pct[,c(8,9,1,2,3,4,5,6,7)]%>% 
  mutate_if(is.numeric, round)
# replace NaN with 0
continent_5_pct_ro[is.na(continent_5_pct_ro)] <- 0
cache('continent_5_pct_ro')


# run6 reorganise columns
continent_6_pct_ro <- continent_6_pct[,c(8,9,1,2,3,4,5,6,7)]%>% 
  mutate_if(is.numeric, round)
# replace NaN with 0
continent_6_pct_ro[is.na(continent_6_pct_ro)] <- 0
cache('continent_6_pct_ro')

# run7 reorganise columns
continent_7_pct_ro <- continent_7_pct[,c(8,9,1,2,3,4,5,6,7)]%>% 
  mutate_if(is.numeric, round)
# replace NaN with 0
continent_7_pct_ro[is.na(continent_7_pct_ro)] <- 0
cache('continent_7_pct_ro')