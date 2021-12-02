# stacked bar chart of each video by continent for run3 absolute value
stack_cont3_AbV_topic_bar_V <- output_3_abs_df %>% 
  ungroup %>% 
  mutate(step_title = fct_relevel(step_title, "1.1_Welcome to the course", "1.5_Privacy online and offline",
                                  "1.14_Why would anyone want your data?", "1.17_Preserving privacy in cloud storage: privacy by design",
                                  "1.19_Staying safe online: personal perspectives",
                                  "2.1_Welcome to Week 2: payment security", "2.4_The evolving arms race of payment security",
                                  "2.11_Exploring vulnerabilities in online payments",
                                  "2.17_The million dollar contactless payment", "3.1_Welcome to Week 3: security in the future home",
                                  "3.2_Devices in the future home",
                                  "3.14_Exploring security: biometric authentication",
                                  "3.15_Exploring security: the Access Control Live Lab")) %>% 
  ggplot( aes(x=step_title, y=Value, fill=Continent)) +
  geom_bar(stat = "identity")+
  theme_classic()+
  coord_flip()+
  scale_x_discrete(name = "Video Topics", labels=function(x) str_wrap(x, width = 32), limits=rev)+
  theme(plot.title = element_text(size=12, face="bold"))+
  scale_color_hue(labels=c("Africa", "Antarctica", "Asia", "Europe", "N. America", "Oceania", "S. America"))+
  scale_y_continuous(name = "Total Views per Continent")

cache("stack_cont3_AbV_topic_bar_V")

