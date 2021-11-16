# make pct for each continent
continent_3_pct <- output_3 / output_3 %>% lapply(max) * 100
cache('continent_3_pct')