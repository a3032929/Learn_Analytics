# order all runs in highest to low value for europe

new_cont_all_df_pct_order <- joint_data_pct_ro[order(-joint_data_pct_ro$europe_views_percent), ] %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percent:antarctica_views_percent) 

cache('new_cont_all_df_pct_order')
