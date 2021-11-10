run3_global <- run3 %>% 
  select(video_duration, europe_views_percentage, oceania_views_percentage, asia_views_percentage, north_america_views_percentage, south_america_views_percentage, africa_views_percentage, antarctica_views_percentage)

pairs(run3_global)
