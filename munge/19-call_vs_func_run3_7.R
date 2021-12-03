# call view_summary function to convert runs 4-7 percent (of columns 'viewed_25/50/75/100_percent') to absolute value and assign to 'output_3_view', 'output_4_view', 'output_5_view', 'output_6_view', 'output_7_view'

output_3_view <- view_3_summary(viewstouse)
cache('output_3_view')

output_4_view <- view_4_summary(viewstouse)
cache('output_4_view')

output_5_view <- view_5_summary(viewstouse)
cache('output_5_view')

output_6_view <- view_6_summary(viewstouse)
cache('output_6_view')

output_7_view <- view_7_summary(viewstouse)
cache('output_7_view')