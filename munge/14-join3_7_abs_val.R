# join all runs together
joint_data <- rbind(output_3_ro, output_4_ro, output_5_ro, output_6_ro, output_7_ro) %>% 
  group_by(step_title, video_duration) %>% 
  summarise(europe_views = sum(europe_views),
            oceania_views = sum(oceania_views),
            asia_views = sum(asia_views),
            n_america_views = sum(n_america_views),
            s_america_views = sum(s_america_views),
            africa_views = sum(africa_views),
            antarctica_views= sum(antarctica_views)) %>% 
  mutate_if(is.numeric, round)

cache('joint_data')