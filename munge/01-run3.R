# Example preprocessing script.

# initial loading of run 3 video stats data
run3 <- cyber.security.3_video.stats

cache('run3')

# set run3 video.stats data to run3unite
# combine step_position and title together
run3unite <- cyber.security.3_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run3unite')
