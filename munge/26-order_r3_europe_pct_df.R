# order run 3 in highest to low value for europe

new_cont_3_test <- continent_3_pct_ro[order(-continent_3_pct_ro$europe_views_percentage), ] %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage) 

