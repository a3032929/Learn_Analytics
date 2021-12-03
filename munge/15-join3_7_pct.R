# to create a percentage_df of joint_data: convert 'joint_data' variable (from file '14-join_3_7_AbV.R') to percent using maximum absolute value within each column (continent), 
# copy the step_title and video_duration columns to new pct-df, then reorganise columns + remove decimal points + replace NaN with 0 + rename columns, then assign to 'joint_data_pct_ro'

# select columns for pct to be calculated
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

# rename columns
names(joint_data_pct_ro) = c("step_title", "video_duration", "europe_views_percent", "oceania_views_percent", "asia_views_percent", "n_america_views_percent", "s_america_views_percent", "africa_views_percent", "antarctica_views_percent")

cache('joint_data_pct_ro')
