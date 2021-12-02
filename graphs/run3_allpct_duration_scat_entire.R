run3_allpct_duration_scat_entire <- new_dur_3_df_pct_entire %>% 
  ggplot( aes(video_duration, Value, color = Phase))+
  geom_line()+
  geom_point()+
  geom_hline(yintercept = 100)+
  ggtitle("Figure 3: Number of viewers watched 5%, 10%, 25%, 50%, 75%, 95% and 100% of videos (run 3)")+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Percentage of viewers through phases of video duration")+
  scale_x_continuous(name = "Video Duration")

cache("run3_allpct_duration_scat_entire")
