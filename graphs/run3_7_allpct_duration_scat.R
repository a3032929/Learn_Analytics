run3_7_allpct_duration_scat_V <- new_dur_view_df_pct %>% 
  ggplot( aes(video_duration, Value, color = Phase))+ 
  geom_line()+
  geom_point()+
  geom_hline(yintercept = 100)+
  ggtitle("Figure 10: Number of viewers watched 25%, 50%, 75% and 100% of videos (all runs)")+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Percentage of viewers through phases of video duration")+
  scale_x_continuous(name = "Video Duration")

cache("run3_7_allpct_duration_scat_V")
  
  
  