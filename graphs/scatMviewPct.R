# plot scatterplot matrix of video duration vs total number of viewers throughout duration of the videos
#run3_vpct <- run3unite %>% 
  #select(video_duration, viewed_five_percent, viewed_ten_percent, viewed_twentyfive_percent, viewed_fifty_percent, viewed_seventyfive_percent, viewed_ninetyfive_percent, viewed_onehundred_percent)

#pairs(run3_vpct)

# plot scatterplot matrix of video duration vs total views through video
pairs(~video_duration + viewed_five_percent + viewed_ten_percent + viewed_twentyfive_percent + viewed_fifty_percent + 
        viewed_seventyfive_percent+ viewed_ninetyfive_percent + viewed_onehundred_percent, 
      data = run3unite,
      main = "No. of views through the Video duration", pch = 19, upper.panel = NULL)

# shows density functions of each variables/ variable distribution in the diagonal
# top half shows correlations coeeficient (Pearson) for each of the variables
#library(GGally)

#run3unite %>% ggpairs(columns = c("video_duration", "viewed_five_percent", "viewed_ten_percent", "viewed_twentyfive_percent",
                                  "viewed_fifty_percent", "viewed_seventyfive_percent", "viewed_ninetyfive_percent",
                                  "viewed_onehundred_percent"),
                      #upper = list(continuous = wrap('cor', size =4)),
                      #lower = list(continuous = wrap("smooth")),
                      #title = "No. of views through the Video duration")   
