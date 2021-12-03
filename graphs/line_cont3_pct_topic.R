# line graph of percentage viewers per continent vs video topic run 3 data.
line_cont3_pct_topic_V <- new_cont_3_df %>% 
  mutate(step_title = fct_relevel(step_title, "1.1_Welcome to the course", "1.5_Privacy online and offline",
                                  "1.14_Why would anyone want your data?", "1.17_Preserving privacy in cloud storage: privacy by design",
                                  "1.19_Staying safe online: personal perspectives",
                                  "2.1_Welcome to Week 2: payment security", "2.4_The evolving arms race of payment security",
                                  "2.11_Exploring vulnerabilities in online payments",
                                  "2.17_The million dollar contactless payment", "3.1_Welcome to Week 3: security in the future home",
                                  "3.2_Devices in the future home",
                                  "3.14_Exploring security: biometric authentication",
                                  "3.15_Exploring security: the Access Control Live Lab")) %>% 
  ggplot( aes(x=step_title, y=Value, group=Continent, color=Continent))+
  geom_line(size=1)+
  geom_point(size=2)+
  theme_bw()+
  ylab("Percentage Viewers")+
  theme(
    plot.title = element_text(size=12, face="bold"),
    axis.text.x = element_text(angle = 45, hjust=1, size=8),
    legend.text = element_text(size=8))+
  scale_color_hue(labels=c("Africa", "Antarctica", "Asia", "Europe", "N. America", "Oceania", "S. America"))+
  scale_y_continuous(name = "Percentage Viewed per continent")+
  scale_x_discrete(name = "Video Topics")
  
                                   
cache("line_cont3_pct_topic_V")
