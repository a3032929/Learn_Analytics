p <- run3 %>% select(2, 4)
p

q <- ggplot(data = p, aes(x=title, y=total_views))+
  geom_bar(stat = 'identity')+
  geom_text(aes(label=total_views), vjust=0.3, color="blue", size=3.5)+
  coord_flip()
q