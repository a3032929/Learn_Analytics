# add step_title and video_duration columns to tables
output_3_view$step_title <- run3unite$step_title
output_3_view$video_duration <- run3unite$video_duration

output_4_view$step_title <- run3unite$step_title
output_4_view$video_duration <- run3unite$video_duration

output_5_view$step_title <- run3unite$step_title
output_5_view$video_duration <- run3unite$video_duration

output_6_view$step_title <- run3unite$step_title
output_6_view$video_duration <- run3unite$video_duration

output_7_view$step_title <- run3unite$step_title
output_7_view$video_duration <- run3unite$video_duration


# reorganise columns
output_3_view_ro <- output_3_view[,c(4,5,1,2,3)]
output_4_view_ro <- output_4_view[,c(4,5,1,2,3)]
output_5_view_ro <- output_5_view[,c(4,5,1,2,3)]
output_6_view_ro <- output_6_view[,c(4,5,1,2,3)]
output_7_view_ro <- output_7_view[,c(4,5,1,2,3)]