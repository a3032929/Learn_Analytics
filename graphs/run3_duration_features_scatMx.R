
# plot scatterplot matrix of video duration vs total views/ captions/ transcript 
pairs(~video_duration + total_views + total_caption_views + total_transcript_views, data = run3unite,
      main = "Figure XX: Total Views and Features used through Video duration", pch = 19, upper.panel = NULL)
