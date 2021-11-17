# plot scatterplot matrix of video duration vs total views through video
pairs(~video_duration + viewed_twentyfive_percent + viewed_fifty_percent + viewed_seventyfive_percent, 
      data = run3unite,
      main = "Figure XX: Total views throughout percentage phase of the Videos", pch = 19, upper.panel = NULL)
