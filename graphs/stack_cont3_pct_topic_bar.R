# stacked bar chart of each video by continent
ggplot(new_cont_3_df, aes(x=step_title, y=Value, fill=Continent)) +
  geom_bar(stat = "identity")+
  theme_classic()+
  coord_flip()+
  scale_x_discrete(name = "Video Topics", labels=function(x) str_wrap(x, width = 32), limits=rev)+
  ggtitle("Figure XX: Percentage of continental viewers on video topics")+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_color_hue(labels=c("Africa", "Antarctica", "Asia", "Europe", "N. America", "Oceania", "S. America"))+
  scale_y_discrete(name = "Total Views per Continent")

