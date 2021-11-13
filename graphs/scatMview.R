# plot scatterplot matrix of video duration vs total views/ downloads/ captions/ transcript
#run3_title <- run3unite %>% 
  #select(video_duration, total_views, total_downloads, total_caption_views, total_transcript_views)

#pairs(run3_title, main = "Total number of Views/ Downloads/ Captions/ Transcripts through the Video duration", pch = 19)

# removed Download
# plot scatterplot matrix of video duration vs total views/ captions/ transcript with general trend line (smooth)
#pairs(~video_duration + total_views + total_caption_views + total_transcript_views, data = run3unite,
     # main = "Total Views/ Captions/ Transcripts through the Video duration", pch = 19, lower.panel = panel.smooth)

# shows density functions of each variables/ variable distribution in the diagonal
# top half shows correlations coeeficient (Pearson) for each of the variables
#library(GGally)
#run3unite %>% ggpairs(columns = c("video_duration", "total_views", "total_caption_views", "total_transcript_views"),
                      #upper = list(continuous = wrap('cor', size =8)),
                     # lower = list(continuous = wrap("smooth", alpha = 0.3, size=0.1)),
                      #title = "Total Views/ Captions/ Transcripts through the Video duration")

#run3unite %>% ggpairs(columns = c("video_duration", "total_views", "total_caption_views", "total_transcript_views"),
                      #upper = list(continuous = wrap('cor', size =8)),
                     # lower = list(continuous = wrap("smooth")),
                     # title = "Total Views/ Captions/ Transcripts through the Video duration")    

# removed Download
# plot scatterplot matrix of video duration vs total views/ captions/ transcript with general trend line (smooth)
pairs(~video_duration + total_views + total_caption_views + total_transcript_views, data = run3unite,
      main = "Figure XX: Total Views and Features used through Video duration", pch = 19, upper.panel = NULL)
