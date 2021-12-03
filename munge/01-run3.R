# codes for initial viewing of run 3 data, check number of rows and columns in dataframe, combine columns 'step_position' and 'title' together and assign to 'run3unite'.

# initial loading of run 3 video stats data
run3 <- cyber.security.3_video.stats

cache('run3')

# check number of rows and columns in dataframe
nrow(run3)
ncol(run3)

# set run3 video.stats data to run3unite
# combine step_position and title together
run3unite <- cyber.security.3_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run3unite')
