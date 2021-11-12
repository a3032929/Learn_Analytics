# plot scatterplot of video duration vs total number of viewers for 100% of video duration
ggplot(data = run3, aes(x=video_duration, y=viewed_onehundred_percent)) + geom_point()
