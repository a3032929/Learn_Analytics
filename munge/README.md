Here you can store any preprocessing or data munging code for your project. For example, if you need to add columns at runtime, merge normalized data sets or globally censor any data points, that code should be stored in the `munge` directory. The preprocessing scripts stored in `munge` will be executed sequentially when you call `load.project()`, so you should append numbers to the filenames to indicate their sequential order.

Description of codes used stored in 'munge':

- '01-run3.R' - codes for initial viewing of run 3 data, check number of rows and columns in dataframe, combine columns 'step_position' and 'title' together and assign to 'run3unite'.

- '02-call_c3s_func.R' - call col_3_summary function to convert percent to absolute value and assign to 'output_3'.

- '03-continent_3_pct.R' - convert 'output_3' variable (from file '02-call_c3s_func.R') to percent using maximum absolute value within each column (continent) and assign to 'continent_3_pct'.

- '04-add_cols_continent_3_pct.R' - copy step_title and video_duration columns from original dataset to new df from file '03_continent_3_pct.R' (assign to same variable 'continent_3_pct').

- '05-tidy_continent_3_pct.R' - reorganise columns of df 'continent_3_pct', remove decimal points and replace NaN to 0, assign to 'continent_3_pct_ro'.

- '06-continent_3_pct_ro_longdf.R' - transform 'continent_3_pct_ro' df to long df to enable graph plot, and assign to 'new_cont_3_df' then use to create graph 'line_cont3_pct_topic'.

- '07-run4_7.R' - for runs 4-7 video.stats data combine columns 'step_position' and 'title' together and assign to 'run4unite', 'run5unite', 'run6unite', 'run7unite'.

- '08-call_cs_func_run4_7.R' - call col_summary function to convert runs 4-7 percent to absolute value and assign to 'output_4', 'output_5', 'output_6', 'output_7'.

- '09-continent_4_7_pct.R' - convert 'output_4' to 'output_7' variables (from file '08-call_cs_func_run4_7.R') to percent using maximum absolute value within each column (continent) and assign to 'continent_4_pct', 'continent_5_pct', 'continent_6_pct', 'continent_7_pct'.

- '10-add_cols_continent_4_7_pct.R' - copy step_title and video_duration columns from original dataset to new df from file '09-continent_4_7_pct.R' (assign to same variable as in '09-continent_4_7_pct.R').

- '11-tidy_continent_4_7_pct.R' - reorganise columns of df 'continent_4_pct' to 'continent_7_pct', remove decimal points and replace NaN to 0, assign to 'continent_4_pct_ro' to 'continent_7_pct_ro'.

- '12-rename_output3_7.R' - rename columns of 'output_3' to 'output_7' (df came from files '02-call_c3s_func.R' and '08-call_cs_func_run4_7.R').

- '13-add_cols_output3_7_AbV.R' - copy step_title and video_duration columns from original dataset to new absolute-value-df from file '12-rename_output3_7.R', then reorganise columns and assign to 'output_3_ro' to 'output_7_ro'. 

- '14-join_3_7_AbV.R' - join all absolute-value-df of all runs together (from '13-add_cols_output3_7_AbV.R') and assign to 'joint_data'.

- '15-join3_7_pct.R' - to create a percentage_df of joint_data: convert 'joint_data' variable (from file '14-join_3_7_AbV.R') to percent using maximum absolute value within each column (continent), copy the step_title and video_duration columns to new pct-df, then reorganise columns + remove decimal points + replace NaN with 0 + rename columns, then assign to 'joint_data_pct_ro'

- '16-join_3_7_AbV_longdf.R' - transform 'joint_data' (with absolute values of all runs combine) df to long df to enable graph plot, and assign to 'new_cont_all_df_AbV' then use to create graph 'stack_cont_all_AbV_topic_bar'.

- '17-join_3_7_pct_longdf.R' - transform 'joint_data_pct_ro' (with percent values of all runs combine) df to long df to enable graph plot, and assign to 'new_cont_all_df_pct' then use to create graph 'line_cont_all_pct_topic'.

- '18-run3_pct_view_longdf.R' - transform 'viewed_25/50/75/100_percent' columns (from original run3 df) to long df to enable graph plot, and assign to 'new_dur_3_df_pct' then use to create graph 'run3_allpct_duration_scat'.

- '19-call_vs_func_run3_7.R'- call view_summary function to convert runs 4-7 percent (of columns 'viewed_25/50/75/100_percent') to absolute value and assign to 'output_3_view', 'output_4_view', 'output_5_view', 'output_6_view', 'output_7_view'

- '20-rename_output_view3_7.R' - rename columns of 'output_3_view' to 'output_7_view' (df came from file '19-call_vs_func_run3_7.R').

- '21-add_cols_output_views3_7_AbV.R' - copy step_title and video_duration columns from original dataset to new absolute-value-df from file '20-rename_output_view3_7.R', then reorganise columns and assign to 'output_3_view_ro' to 'output_7_view_ro'.

- '22-join_views_3_7_AbV.R' - join all 25/50/75/100-absolute-value-df of all runs together (from '21-add_cols_output_views3_7_AbV.R') and assign to 'joint_view_data'.

- '23-join_views3_7_pct.R' - to create a percentage_df of joint_view_data: convert 'joint_view_data' variable (from file '22-join_views_3_7_AbV.R') to percent using maximum absolute value within each column (viewed_25/50/75/100_percent), copy the step_title and video_duration columns to new pct-df, then reorganise columns + remove decimal points + rename columns, then assign to 'joint_view_data_pct_ro'.

- '24-join_view_3_7_pct_longdf.R' - transform 'joint_view_data_pct_ro' (with percent values of all runs combine) df to long df to enable graph plot, and assign to 'new_dur_view_df_pct', then use to create graph 'run3_7_allpct_duration_scat'.

- '25-new_top_view_pct_df.R' - transform 'joint_view_data_pct_ro' (with percent values of all runs combine) df to long df to enable graph plot, and assign to 'new_top_view_df_pct', not used on graph.

- '26-order_r3_europe_pct_df.R' - transform 'continent_3_pct_ro' (with percent values of run3) df to long df to enable graph plot, and assign to 'new_cont_3_test', not used on graph.

- '27-continent_3_pct_ro_longdf_dur.R' - transform 'continent_3_pct_ro' (with percent values of run3) df to long df to enable graph plot, select duration column, and assign to 'new_cont_3_df_dur', then use to create graph 'line_cont3_pct_dur'.

- '28-join_3_7_pct_longdf_dur.R' - transform 'joint_data_pct_ro' (with percent values of all runs) df to long df to enable graph plot, select duration column, and assign to 'joint_data_dur', then use to create graph 'line_cont_all_pct_dur'.

- '29-tidy_output_3_ro_AbV.R' - tidy absolute values of 'output_3_ro': by using summarise to remove decimal points + remove unwanted .name from columns (by removing df held within)

- '30-output_3_abs_longdf_topic.R' - transform 'output_3_abs' (with absolute values of run 3) df to long df to enable graph plot, select topics column, and assign to 'output_3_abs_df' then use to create graph 'stack_cont3_AbV_topic_bar'.

- '31-order_all_europe_pct_df.R' - transform 'joint_data_pct_ro', in highest to lowest value using europe's order of views, (with percent values of all runs) df to long df to enable graph plot, and assign to 'new_cont_all_df_pct_order', not used on graph.

- '32-all_runs_totalview_Abv.R' - create new dataframe of all absolute values across all runs and summed the absolute values of 'total_viewed'

- '33-run3_abs_display.R' - create a tibble to unnest and show output_3 (absolute values from run 3 continent), rename columns, for display purposes

- '34-run3_entire_pct_view_longdf.R' - transform 'viewed_5/10/25/50/75/95/100_percent' columns (from original run3 df) to long df to enable graph plot, and assign to 'new_dur_3_df_pct_entire', not used on graph.
