# plot scatterplot matrix of video duration vs percentage viewers across continents
#run3_global <- run3unite %>% 
  #select(video_duration, europe_views_percentage, oceania_views_percentage, asia_views_percentage, north_america_views_percentage, south_america_views_percentage, africa_views_percentage, antarctica_views_percentage)

#pairs(run3_global)

# plot scatterplot matrix of video duration vs total views/ captions/ transcript with general trend line (smooth)
pairs(~video_duration + europe_views_percentage + oceania_views_percentage + asia_views_percentage + north_america_views_percentage + 
      south_america_views_percentage + africa_views_percentage+ antarctica_views_percentage, 
      data = run3unite,
      main = "Continent views through the Video duration", pch = 19, lower.panel = panel.smooth)

# shows density functions of each variables/ variable distribution in the diagonal
# top half shows correlations coeeficient (Pearson) for each of the variables
library(GGally)

run3unite %>% ggpairs(columns = c("video_duration", "europe_views_percentage", "oceania_views_percentage", "asia_views_percentage",
                                  "north_america_views_percentage", "south_america_views_percentage", "africa_views_percentage",
                                  "antarctica_views_percentage"),
                      upper = list(continuous = wrap('cor', size =4)),
                      lower = list(continuous = wrap("smooth")),
                      title = "Continent views through the Video duration")   
