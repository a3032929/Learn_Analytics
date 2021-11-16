# Example preprocessing script.

# set run3 video.stats data to run3unite
# combine step_position and title together
run3unite <- cyber.security.3_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run3unite')
