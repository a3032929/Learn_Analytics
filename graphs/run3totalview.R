# plot horizontal bar chart of video topic vs total number of viewers
topic_view <- run3unite %>% select(1, 5)

bar_topicV <- ggplot(data = topic_view, aes(x=step_title, y=total_views))+
  geom_bar(stat = 'identity')+
  geom_text(aes(label=total_views), vjust=0.3, color="blue", size=3.5)+
  coord_flip()
bar_topicV