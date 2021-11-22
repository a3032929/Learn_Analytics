# graph to show highest to lowest views through course
run3_continuous <- new_cont_3_test %>% 
  mutate(step_title = fct_relevel(step_title, "1.1_Welcome to the course", "1.5_Privacy online and offline",
                            "1.14_Why would anyone want your data?", "1.19_Staying safe online: personal perspectives",
                            "1.17_Preserving privacy in cloud storage: privacy by design",
                            "2.1_Welcome to Week 2: payment security", "2.4_The evolving arms race of payment security",
                            "2.11_Exploring vulnerabilities in online payments",
                            "2.17_The million dollar contactless payment", "3.2_Devices in the future home",
                            "3.1_Welcome to Week 3: security in the future home",
                            "3.15_Exploring security: the Access Control Live Lab",
                            "3.14_Exploring security: biometric authentication")) %>% 
  ggplot( aes(x=step_title, y=Value, group=Continent, color=Continent))+
  geom_line(size=1)+
  geom_point(size=2)+
  ggtitle("Figure XX: Total percentage of viewers from high to lowest in run 3")+
  xlab("")+
  ylab("Percentage Viewers")+
  theme_bw()+
  theme(
    plot.title = element_text(size=12, face="bold"),
    axis.text.x = element_text(angle = 45, hjust=1, size=8),
    legend.text = element_text(size=8))+
  scale_color_hue(labels=c("Africa", "Antarctica", "Asia", "Europe", "N. America", "Oceania", "S. America"))+
  scale_y_continuous(name = "Percentage Viewed per continent")+
  scale_x_discrete(name = "Video Topics")
    

