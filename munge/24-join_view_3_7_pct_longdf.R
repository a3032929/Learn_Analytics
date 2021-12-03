# transform 'joint_view_data_pct_ro' (with percent values of all runs combine) df to long df to enable graph plot, and assign to 'new_dur_view_df_pct'
# then use to create graph 'run3_7_allpct_duration_scat'.

# transform all runs 25/50/75/100% columns to enable graph plot
new_dur_view_df_pct <- joint_view_data_pct_ro %>% 
  select(video_duration, twenty5_views_percent, fifty_views_percent, seventy5_views_percent, onehundred_views_percent) %>% 
  gather(key = Phase, value = Value, twenty5_views_percent:onehundred_views_percent)

cache('new_dur_view_df_pct')
