ggplot(new_top_view_df_pct, aes(step_title, Value, color = Phase, group = 1))+
  geom_line()+
  geom_point()+
  geom_hline(yintercept = 100)+
  ggtitle("Figure XX: Number of viewers watched 100% of videos")+
  theme_classic()+
  theme(plot.title = element_text(size=12, face="bold"),
        axis.text.x = element_text(angle = 45, hjust=1, size=8),)+
  scale_y_continuous(name = "Percentage of viewers through phases of video duration")+
  scale_x_discrete(name = "Video Topics")
