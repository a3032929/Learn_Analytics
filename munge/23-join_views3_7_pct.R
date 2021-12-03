# to create a percentage_df of joint_view_data: convert 'joint_view_data' variable (from file '22-join_views_3_7_AbV.R') to percent using maximum absolute value within each column (viewed_25/50/75/100_percent), 
# copy the step_title and video_duration columns to new pct-df, then reorganise columns + remove decimal points + rename columns, 
# then assign to 'joint_view_data_pct_ro'

# make pct for each continent
joint_view_data_pct <- data.frame(joint_view_data$twenty5_pct_view / joint_view_data$total_views* 100,
                                  joint_view_data$fifty_pct_view / joint_view_data$total_views* 100,
                                  joint_view_data$seventy5_pct_view / joint_view_data$total_views* 100,
                                  joint_view_data$onehundred_pct_view / joint_view_data$total_views* 100)




# copy the step_title and video duration columns to new pct df
joint_view_data_pct$step_title <- joint_view_data$step_title
joint_view_data_pct$video_duration <- joint_view_data$video_duration

cache('joint_view_data_pct')

# run3 reorganise columns
# remove decimal points
joint_view_data_pct_ro <- joint_view_data_pct[,c(5,6,1,2,3,4)] %>% 
  mutate_if(is.numeric, round) 


# rename columns
names(joint_view_data_pct_ro) = c("step_title", "video_duration", "twenty5_views_percent", "fifty_views_percent", "seventy5_views_percent", "onehundred_views_percent")

cache('joint_view_data_pct_ro')

