# transform all_runs_absolute_value_df to enable graph plot
new_cont_all_df_AbV <- joint_data %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views:antarctica_views)

cache('new_cont_all_df_AbV')
