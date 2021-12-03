# transform 'joint_data' (with absolute values of all runs combine) df to long df to enable graph plot, and assign to 'new_cont_all_df_AbV'
# then use to create graph 'stack_cont_all_AbV_topic_bar'.

new_cont_all_df_AbV <- joint_data %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views:antarctica_views)

cache('new_cont_all_df_AbV')
