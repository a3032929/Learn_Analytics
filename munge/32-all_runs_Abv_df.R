# new dataframe of all absolute values across all runs
new_cont_all_df_AbV_full <- new_cont_all_df_AbV %>% 
  select(step_title, Value) %>% 
  group_by(step_title) %>% 
  summarise(total = sum(Value))
cache('new_cont_all_df_AbV_full')
