# line graph of each continent throughout course using duration
line_cont3_pct_dur_V <- new_cont_3_df_dur %>% 
  ggplot( aes(x=video_duration, y=Value, group=Continent, color=Continent))+
  geom_line(size=1)+
  geom_point(size=2)+
  ggtitle("Figure 4: Percentage of Viewers against Video duration (run 3)")+
  theme_bw()+
  ylab("Percentage Viewers")+
  theme(
    plot.title = element_text(size=12, face="bold"),
    axis.text.x = element_text(angle = 45, hjust=1, size=8),
    legend.text = element_text(size=8))+
  scale_color_hue(labels=c("Africa", "Antarctica", "Asia", "Europe", "N. America", "Oceania", "S. America"))+
  scale_y_continuous(name = "Percentage Viewed per continent")+
  scale_x_continuous(name = "Video duration (secs)")

cache("line_cont3_pct_dur_V")
