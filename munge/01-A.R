# Example preprocessing script.
# set run3 video.stats data to run3
run3 <- cyber.security.3_video.stats
cache('run3')

# combine step_position and title together
run3unite <- run3 %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run3unite')