# convert output_3 variable (from file '02-call_c3s_func.R') to percent using maximum absolute value within each column (continent) and assign to 'continent_3_pct'
continent_3_pct <- output_3 / output_3 %>% lapply(max) * 100
cache('continent_3_pct')