# copy step_title and video_duration columns from original dataset to new df from file '03_continent_3_pct.R' (assign to same variable 'continent_3_pct').
continent_3_pct$step_title <- run3unite$step_title
continent_3_pct$video_duration <- run3unite$video_duration

cache('continent_3_pct')
