# line graph of each continent throughout course using all runs pct
line_cont_all_pct_topic_V <- new_cont_all_df_pct %>% 
  ggplot( aes(x=step_title, y=Value, group=Continent, color=Continent))+
  geom_line(size=1)+
  geom_point(size=2)+
  ggtitle("Figure XX: Total percentage of viewers for Video Topics")+
  theme_bw()+
  ylab("Percentage Viewers")+
  theme(
    plot.title = element_text(size=12, face="bold"),
    axis.text.x = element_text(angle = 45, hjust=1, size=8),
    legend.text = element_text(size=8))+
  scale_color_hue(labels=c("Africa", "Antarctica", "Asia", "Europe", "N. America", "Oceania", "S. America"))+
  scale_y_continuous(name = "Percentage Viewed per continent")+
  scale_x_discrete(name = "Video Topics")


cache("line_cont_all_pct_topic_V")
