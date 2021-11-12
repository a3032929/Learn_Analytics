# plot horizontal bar chart of video topic vs total number of viewers
topic_view <- run3unite %>% select(1, 5)

bar_topicV <- ggplot(data = topic_view, aes(x=step_title, y=total_views))+
  geom_bar(stat = 'identity', fill="#0099f9")+
  geom_text(aes(label=total_views), hjust=-0.2, size=3.5)+
  labs(title="Figure XX: Total number of Viewed per Video Topic")+
  theme(plot.title = element_text(face = "bold"))+
  theme_classic()+
  coord_flip()+
  scale_y_continuous(name = "Total Views")+
  scale_x_discrete(name = "Video Topics", labels=function(x) str_wrap(x, width = 32), limits=rev)
bar_topicV
