dfcont <- continent_pct_ro %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage)