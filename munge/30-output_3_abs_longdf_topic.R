# transform 'output_3_abs' (with absolute values of run 3) df to long df to enable graph plot, select topics column, 
# and assign to 'output_3_abs_df' then use to create graph 'stack_cont3_AbV_topic_bar'.

# transform df to enable graph plot for run abs value for bar
output_3_abs_df <- output_3_abs %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views:antarctica_views)

cache('output_3_abs_df')
