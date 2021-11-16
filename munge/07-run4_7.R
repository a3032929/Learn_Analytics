# Example preprocessing script.

# set run4-7 video.stats data to run3unite
# combine step_position and title together
run4unite <- cyber.security.4_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run4unite')

run5unite <- cyber.security.5_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run5unite')

run6unite <- cyber.security.6_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run6unite')

run7unite <- cyber.security.7_video.stats %>% 
  unite("step_title", step_position:title, remove = FALSE)
cache('run7unite')