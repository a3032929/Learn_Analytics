# join all 25/75/100 absolute values together
joint_view_data <- rbind(output_3_view_ro, output_4_view_ro, output_5_view_ro, output_6_view_ro, output_7_view_ro) %>% 
  group_by(step_title, video_duration) %>% 
  summarise(twenty5_pct_view = sum(twenty5_pct_view),
            seventy5_pct_view = sum(seventy5_pct_view),
            onehundred_pct_view = sum(onehundred_pct_view)) %>% 
  mutate_if(is.numeric, round)

cache('joint_view_data')
