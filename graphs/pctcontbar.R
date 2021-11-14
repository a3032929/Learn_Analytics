ggplot(dfcont, aes(x=step_title, y=Value, fill=Continent)) +
  geom_bar(stat = "identity")+
  theme_classic()+
  coord_flip()+
  scale_x_discrete(name = "step_title", labels=function(x) str_wrap(x, width = 32), limits=rev)


