# make pct for each continent
continent_pct <- output / output %>% lapply(max) * 100
