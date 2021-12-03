# transform 'continent_3_pct_ro' (with percent values of run3) df to long df to enable graph plot, select duration column, and assign to 'new_cont_3_df_dur',
# then use to create graph 'line_cont3_pct_dur'.

# transform df to enable graph plot using duration
new_cont_3_df_dur <- continent_3_pct_ro %>% 
  select(-step_title) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage)

cache('new_cont_3_df_dur')
