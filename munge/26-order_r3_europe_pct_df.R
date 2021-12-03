# transform 'continent_3_pct_ro' (with percent values of run3) df to long df to enable graph plot, and assign to 'new_cont_3_test', not used on graph.
# order run 3 in highest to low value for europe

new_cont_3_test <- continent_3_pct_ro[order(-continent_3_pct_ro$europe_views_percentage), ] %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage) 

cache('new_cont_3_test')