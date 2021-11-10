run3_title <- run3 %>% 
  select(video_duration, total_views, total_downloads, total_caption_views, total_transcript_views)

pairs(run3_title)
