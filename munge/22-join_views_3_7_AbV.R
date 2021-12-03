# join all 25/50/75/100-absolute-value-df of all runs together (from '21-add_cols_output_views3_7_AbV.R') and assign to 'joint_view_data'.

joint_view_data <- rbind(output_3_view_ro, output_4_view_ro, output_5_view_ro, output_6_view_ro, output_7_view_ro) %>% 
  group_by(step_title, video_duration) %>% 
  summarise(total_views = sum(total_views),
            twenty5_pct_view = sum(twenty5_pct_view),
            fifty_pct_view = sum(fifty_pct_view),
            seventy5_pct_view = sum(seventy5_pct_view),
            onehundred_pct_view = sum(onehundred_pct_view)) %>% 
  mutate_if(is.numeric, round)

cache('joint_view_data')
