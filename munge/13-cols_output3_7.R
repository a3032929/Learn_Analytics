# add step_title and video_duration columns to tables
output_3$step_title <- run3unite$step_title
output_3$video_duration <- run3unite$video_duration
cache('output_3')

output_4$step_title <- run4unite$step_title
output_4$video_duration <- run4unite$video_duration
cache('output_4')

output_5$step_title <- run5unite$step_title
output_5$video_duration <- run5unite$video_duration
cache('output_5')

output_6$step_title <- run6unite$step_title
output_6$video_duration <- run6unite$video_duration
cache('output_6')

output_7$step_title <- run7unite$step_title
output_7$video_duration <- run7unite$video_duration
cache('output_7')

# reorganise columns
output_3_ro <- output_3[,c(8,9,1,2,3,4,5,6,7)]
output_4_ro <- output_4[,c(8,9,1,2,3,4,5,6,7)]
output_5_ro <- output_5[,c(8,9,1,2,3,4,5,6,7)]
output_6_ro <- output_6[,c(8,9,1,2,3,4,5,6,7)]
output_7_ro <- output_7[,c(8,9,1,2,3,4,5,6,7)]
cache('output_3_ro')
cache('output_4_ro')
cache('output_5_ro')
cache('output_6_ro')
cache('output_7_ro')