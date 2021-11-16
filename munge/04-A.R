# copy the step_title and video duration columns to new pct df
continent_3_pct$step_title <- run3unite$step_title
continent_3_pct$video_duration <- run3unite$video_duration

cache('continent_3_pct')
