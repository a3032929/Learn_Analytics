# copy the step_title and video duration columns to new pct df
continent_4_pct$step_title <- run4unite$step_title
continent_4_pct$video_duration <- run4unite$video_duration

cache('continent_4_pct')

continent_5_pct$step_title <- run5unite$step_title
continent_5_pct$video_duration <- run5unite$video_duration

cache('continent_5_pct')

continent_6_pct$step_title <- run6unite$step_title
continent_6_pct$video_duration <- run6unite$video_duration

cache('continent_6_pct')

continent_7_pct$step_title <- run7unite$step_title
continent_7_pct$video_duration <- run7unite$video_duration

cache('continent_7_pct')
