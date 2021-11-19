# transform all runs 25/50/75/100% columns to enable graph plot
new_top_view_df_pct <- joint_view_data_pct_ro %>% 
  select(step_title, twenty5_views_percent, fifty_views_percent, seventy5_views_percent, onehundred_views_percent) %>% 
  gather(key = Phase, value = Value, twenty5_views_percent:onehundred_views_percent)

cache('new_top_view_df_pct')
