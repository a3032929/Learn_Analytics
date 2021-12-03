# transform 'joint_data_pct_ro' (with percent values of all runs combine) df to long df to enable graph plot, and assign to 'new_cont_all_df_pct' 
# then use to create graph 'line_cont_all_pct_topic'.

new_cont_all_df_pct <- joint_data_pct_ro %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percent:antarctica_views_percent)

cache('new_cont_all_df_pct')
