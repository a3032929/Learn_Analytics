# a tibble to unnest and show output_3 and rename columns
# for display purposes

run3_abs <- as_tibble(output_3[1:3,c(1:7)]) %>% 
  unnest(cols = c(europe_views, oceania_views, asia_views, n_america_views, s_america_views, 
                  africa_views, antarctica_views)) %>% 
  rename_with(~str_remove(., '_percentage'))

cache('run3_abs')
