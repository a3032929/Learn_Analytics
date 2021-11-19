# transform df to enable graph plot using duration
joint_data_dur <- joint_data_pct_ro %>% 
  select(-step_title) %>% 
  gather(key = Continent, value = Value, europe_views_percent:antarctica_views_percent)

cache('joint_data_dur')
