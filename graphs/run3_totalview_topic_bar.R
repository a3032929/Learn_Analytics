# plot horizontal bar chart of video topic vs total number of viewers
run3_totalview_topic_bar_V <- run3unite %>% 
  mutate(step_title = fct_relevel(step_title, "1.1_Welcome to the course", "1.5_Privacy online and offline",
                                  "1.14_Why would anyone want your data?", "1.17_Preserving privacy in cloud storage: privacy by design",
                                  "1.19_Staying safe online: personal perspectives",
                                  "2.1_Welcome to Week 2: payment security", "2.4_The evolving arms race of payment security",
                                  "2.11_Exploring vulnerabilities in online payments",
                                  "2.17_The million dollar contactless payment", "3.1_Welcome to Week 3: security in the future home",
                                  "3.2_Devices in the future home",
                                  "3.14_Exploring security: biometric authentication",
                                  "3.15_Exploring security: the Access Control Live Lab")) %>% 
  ggplot( aes(x=step_title, y=total_views))+
  geom_bar(stat = 'identity', fill="#0099f9")+
  geom_text(aes(label=total_views), hjust=-0.2, size=3.5)+
  labs(title="Figure XX: Total number of Viewed per Video Topic")+
  theme(plot.title = element_text(size=12,face = "bold"))+
  theme_classic()+
  coord_flip()+
  scale_y_continuous(name = "Total Views")+
  scale_x_discrete(name = "Video Topics", labels=function(x) str_wrap(x, width = 32), limits=rev)

cache("run3_totalview_topic_bar_V")
