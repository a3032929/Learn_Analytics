# transform 'viewed_25/50/75/100_percent' columns (from original run3 df) to long df to enable graph plot, and assign to 'new_dur_3_df_pct' 
# then use to create graph 'run3_allpct_duration_scat'.

new_dur_3_df_pct <- run3unite %>% 
  select(video_duration, viewed_twentyfive_percent, viewed_fifty_percent, viewed_seventyfive_percent, viewed_onehundred_percent) %>% 
  gather(key = Phase, value = Value, viewed_twentyfive_percent:viewed_onehundred_percent)

cache('new_dur_3_df_pct')
