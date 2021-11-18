# transform all_runs_pct_df to enable graph plot
new_cont_all_df_pct <- joint_data_pct_ro %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percent:antarctica_views_percent)

cache('new_cont_all_df_pct')
