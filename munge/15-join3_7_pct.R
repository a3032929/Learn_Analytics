# make pct for each continent
joint_data_pct <- joint_data[3:9] / joint_data[3:9] %>% lapply(max) * 100

# copy the step_title and video duration columns to new pct df
joint_data_pct$step_title <- joint_data$step_title
joint_data_pct$video_duration <- joint_data$video_duration

cache('joint_data_pct')

# run3 reorganise columns
# remove decimal points
joint_data_pct_ro <- joint_data_pct[,c(8,9,1,2,3,4,5,6,7)] %>% 
  mutate_if(is.numeric, round) 

# replace NaN with 0
joint_data_pct_ro[is.na(joint_data_pct_ro)] <- 0

cache('joint_data_pct_ro')