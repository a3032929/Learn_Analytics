# add step_title and video_duration columns to tables
output_3_view$step_title <- run3unite$step_title
output_3_view$video_duration <- run3unite$video_duration
output_3_view$total_views <- run3unite$total_views

output_4_view$step_title <- run4unite$step_title
output_4_view$video_duration <- run4unite$video_duration
output_4_view$total_views <- run4unite$total_views

output_5_view$step_title <- run5unite$step_title
output_5_view$video_duration <- run5unite$video_duration
output_5_view$total_views <- run5unite$total_views

output_6_view$step_title <- run6unite$step_title
output_6_view$video_duration <- run6unite$video_duration
output_6_view$total_views <- run6unite$total_views

output_7_view$step_title <- run7unite$step_title
output_7_view$video_duration <- run7unite$video_duration
output_7_view$total_views <- run7unite$total_views


# reorganise columns
output_3_view_ro <- output_3_view[,c(4,5,6,1,2,3)]
output_4_view_ro <- output_4_view[,c(4,5,6,1,2,3)]
output_5_view_ro <- output_5_view[,c(4,5,6,1,2,3)]
output_6_view_ro <- output_6_view[,c(4,5,6,1,2,3)]
output_7_view_ro <- output_7_view[,c(4,5,6,1,2,3)]