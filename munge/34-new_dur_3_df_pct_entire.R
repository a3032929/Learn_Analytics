# transform 5/10/25/50/75/95/100% columns to enable graph plot
new_dur_3_df_pct_entire <- run3unite %>% 
  select(video_duration, viewed_five_percent, viewed_ten_percent, viewed_twentyfive_percent, viewed_fifty_percent, viewed_seventyfive_percent, viewed_ninetyfive_percent, viewed_onehundred_percent) %>% 
  gather(key = Phase, value = Value, viewed_five_percent:viewed_onehundred_percent)

cache('new_dur_3_df_pct_entire')
