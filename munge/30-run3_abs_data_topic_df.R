# transform df to enable graph plot for run abs value for bar
output_3_abs_df <- output_3_abs %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views:antarctica_views)

cache('output_3_abs_df')
