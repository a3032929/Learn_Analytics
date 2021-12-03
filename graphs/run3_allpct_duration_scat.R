# line chart of video duration vs percentage viewers in different duration of video for run 3 data
# used files (1 + 18) in munge for data
run3_allpct_duration_scat_V <- new_dur_3_df_pct %>% 
  ggplot( aes(video_duration, Value, color = Phase))+
  geom_line()+
  geom_point()+
  geom_hline(yintercept = 100)+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Percentage of viewers through phases of video duration")+
  scale_x_continuous(name = "Video Duration (sec)")

cache("run3_allpct_duration_scat_V")
