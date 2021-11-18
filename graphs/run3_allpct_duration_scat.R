ggplot(new_dur_3_df_pct, aes(video_duration, Value, color = Phase))+
  geom_point()+
  geom_hline(yintercept = 100)+
  ggtitle("Figure XX: Number of viewers watched 25/50/75/100% of videos")+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Number of viewers (25/50/75/100% of video duration")+
  scale_x_continuous(name = "Video Duration")

ggplot(new_dur_3_df_pct, aes(video_duration, Value, color = Phase))+
  geom_line()+
  geom_hline(yintercept = 100)+
  ggtitle("Figure XX: Number of viewers watched 100% of videos")+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Number of viewers (100% of video duration")+
  scale_x_continuous(name = "Video Duration")
