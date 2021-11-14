dfcont <- continent_pct_ro %>% 
  select(-video_duration) %>% 
  gather(key = Continent, value = Value, europe_views_percentage:antarctica_views_percentage)
dfcont

ggplot(dfcont, aes(x=step_title, y=Value, fill=Continent)) +
  geom_bar(stat = "identity")+
  theme_classic()+
  coord_flip()+
  scale_x_discrete(name = "step_title", labels=function(x) str_wrap(x, width = 32), limits=rev)

# this is to test git resets
