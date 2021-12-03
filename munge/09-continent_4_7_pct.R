# convert 'output_4' to 'output_7' variables (from file '08-call_cs_func_run4_7.R') to percent using maximum absolute value within each column (continent) and assign to 
# 'continent_4_pct', 'continent_5_pct', 'continent_6_pct', 'continent_7_pct'

continent_4_pct <- output_4 / output_4 %>% lapply(max) * 100
cache('continent_4_pct')

continent_5_pct <- output_5 / output_5 %>% lapply(max) * 100
cache('continent_5_pct')

continent_6_pct <- output_6 / output_6 %>% lapply(max) * 100
cache('continent_6_pct')

continent_7_pct <- output_7 / output_7 %>% lapply(max) * 100
cache('continent_7_pct')