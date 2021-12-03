# transform 'joint_data_pct_ro', in highest to lowest value using europe's order of views, (with percent values of all runs) df to long df to enable graph plot, 
# and assign to 'new_cont_all_df_pct_order', not used on graph.

new_cont_all_df_pct_order <- joint_data_pct_ro[order(-joint_data_pct_ro$europe_views_percent), ] %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percent:antarctica_views_percent) 

cache('new_cont_all_df_pct_order')
