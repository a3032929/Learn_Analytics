# transform 25/75/100% columns to enable graph plot
new_dur_3_df_pct <- run3unite %>% 
  select(video_duration, viewed_twentyfive_percent, viewed_fifty_percent, viewed_seventyfive_percent, viewed_onehundred_percent) %>% 
  gather(key = Phase, value = Value, viewed_twentyfive_percent:viewed_onehundred_percent)

cache('new_dur_3_df_pct')
