
# plot scatterplot matrix of video duration vs total views in continents
pairs(~video_duration + europe_views_percentage + oceania_views_percentage + asia_views_percentage + north_america_views_percentage + 
      south_america_views_percentage + africa_views_percentage+ antarctica_views_percentage, 
      data = run3unite,
      main = "Figure XX: Total Continent views through Video duration", pch = 19, upper.panel = NULL)

