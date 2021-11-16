# plot scatterplot of video duration vs total number of viewers for 100% of video duration
ggplot(data = run3unite, aes(x=video_duration, y=viewed_onehundred_percent)) + 
  geom_point()+
  geom_hline(yintercept = 100)+
  ggtitle("Figure XX: Number of viewers watched 100% of videos")+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Number of viewers (100% of video duration")+
  scale_x_continuous(name = "Video Duration")
