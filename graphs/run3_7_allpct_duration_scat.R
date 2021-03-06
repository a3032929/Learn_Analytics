# line chart of video duration vs percentage viewers in different duration of video for all run data
# used files (1, 7, 19, 20, 21, 22, 23, 24) in munge for data and view_num_summary function
run3_7_allpct_duration_scat_V <- new_dur_view_df_pct %>% 
  ggplot( aes(video_duration, Value, color = Phase))+ 
  geom_line()+
  geom_point()+
  geom_hline(yintercept = 100)+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_y_continuous(name = "Percentage of viewers through phases of video duration")+
  scale_x_continuous(name = "Video Duration (sec)")

cache("run3_7_allpct_duration_scat_V")
  
  
  