# plot horizontal bar chart of video topic vs total number of viewers
topic_view <- run3 %>% select(2, 4)
topic_view

bar_topicV <- ggplot(data = topic_view, aes(x=title, y=total_views))+
  geom_bar(stat = 'identity')+
  geom_text(aes(label=total_views), vjust=0.3, color="blue", size=3.5)+
  coord_flip()
bar_topicV