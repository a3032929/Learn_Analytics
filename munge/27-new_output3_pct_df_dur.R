# transform df to enable graph plot using duration
new_cont_3_df_dur <- continent_3_pct_ro %>% 
  select(-step_title) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage)

cache('new_cont_3_df_dur')
