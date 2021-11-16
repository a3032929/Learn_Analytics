# make pct for each continent
continent_4_pct <- output_4 / output_4 %>% lapply(max) * 100
cache('continent_4_pct')

continent_5_pct <- output_5 / output_5 %>% lapply(max) * 100
cache('continent_5_pct')

continent_6_pct <- output_6 / output_6 %>% lapply(max) * 100
cache('continent_6_pct')

continent_7_pct <- output_7 / output_7 %>% lapply(max) * 100
cache('continent_7_pct')