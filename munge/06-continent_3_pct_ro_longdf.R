# transform 'continent_3_pct_ro' df to long df to enable graph plot, and assign to 'new_cont_3_df' then use to create graph 'line_cont3_pct_topic'
new_cont_3_df <- continent_3_pct_ro %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage)

cache('new_cont_3_df')