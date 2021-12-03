# CSC8631 Learning Analytics Report

This directory contains the documents, codes, functions and graphs for the 
investigation of the Cyber Security course using Learning Analytics.

To load this project, please run the following two lines of R code:

	library('ProjectTemplate')
	load.project()

After you enter the second line of code, you'll see a series of automated
messages as ProjectTemplate goes about doing its work. This work involves:
* Reading in the global configuration file contained in `config`.
* Loading any R packages you listed in the configuration file.
* Reading in any datasets stored in `data` or `cache`.
* Preprocessing your data using the files in the `munge` directory.

The load 'munging' configuration of 'global.dcf' file within the 'config' 
directory has been turned off. All the relevant outputs of codes are stored 
within the 'cache' folder, which is configured to automatically load when 
loading this project.

The key folders, you can find the following files:
'reports' folder:
- RMarkdown document saved as 'Report.Rmd' (it contains a code for the scatter
plot matrix which can be ran from within the report).
- RMarkdown document pdf output saved as 'Report.pdf'.
- A bib file of references used for the project saved as 'EDA_reference.bib'.

'lib' folder:
- contains 2 sets of functions:
- col_'num'_summary - a function to calculate the absolute values from 
percentage values, for all cells in the continent columns. Each of the 
col_'num'_summary takes the corresponding run of data (ie. col_3_summary for 
run 3 data).
- view_'num'_summary - function to calculate the absolute values from 
percentage values, for all cells in the viewed_percent columns. Each of the 
view_'num'_summary takes the corresponding run of data (ie. view_3_summary for 
run 3 data).

'munge' folder:
- contains all of the codes to clean and pre-process data. Further detail of 
each file could be found in the README.md saved in the 'munge' directory.

'graph' folder:
- contains all of the codes to plot the graphs. Further detail of 
each file could be found in the README.md saved in the 'graph' directory.
- Used graphs scripts contains details of munge files used for data

'data' folder:
- contains the 53 .csv raw data 
