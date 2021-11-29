# plot scatterplot matrix of video duration vs & viewed
pairs(~video_duration + viewed_five_percent + viewed_ten_percent + viewed_twentyfive_percent + viewed_fifty_percent +
      viewed_seventyfive_percent + viewed_ninetyfive_percent + viewed_onehundred_percent, data = run3unite,
      labels = c("Video duration", "5% viewed", "10% viewed", "25% viewed", "50% viewed", "75% viewed", "95% viewed", "100% viewed"),
      main = "Figure XX: Total Percentage viewed used through Video duration", pch = 19, upper.panel = NULL)





# plot scatterplot matrix of video duration vs & viewed
pairs(~video_duration + viewed_twentyfive_percent + viewed_fifty_percent +
        viewed_seventyfive_percent + viewed_onehundred_percent, data = run3unite,
      labels = c("Video duration", "25% viewed", "50% viewed", "75% viewed", "100% viewed"),
      main = "Figure XX: Total Percentage viewed used through Video duration", pch = 19, upper.panel = NULL)
