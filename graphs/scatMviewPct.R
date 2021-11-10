run3_vpct <- run3 %>% 
  select(video_duration, viewed_five_percent, viewed_ten_percent, viewed_twentyfive_percent, viewed_fifty_percent, viewed_seventyfive_percent, viewed_ninetyfive_percent, viewed_onehundred_percent)

pairs(run3_vpct)
