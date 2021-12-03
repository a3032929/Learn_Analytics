# transform 'joint_data_pct_ro' (with percent values of all runs) df to long df to enable graph plot, select duration column, and assign to 'joint_data_dur', 
# then use to create graph 'line_cont_all_pct_dur'.

# transform df to enable graph plot using duration
joint_data_dur <- joint_data_pct_ro %>% 
  select(-step_title) %>% 
  gather(key = Continent, value = Value, europe_views_percent:antarctica_views_percent)

cache('joint_data_dur')
