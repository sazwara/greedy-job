*=============================================================================*
* MASTER DO-FILE: Greedy job analysis
*=============================================================================*

version 16
clear all
set more off

graph set window fontface "Garamond"

* User-specific project directory

if "`c(username)'" == "sazwara" {
    global project ///
        "[insert project directory here]"
}
else {
    display as error "Project directory is not configured for this user."
    exit 198
}

* Shared directories
global code   "$project/code"
global output "$project/output"
global temp   "$project/temp"
global viz    "$output/Visualizations"

capture mkdir "$output"
capture mkdir "$code"
capture mkdir "$temp"
capture mkdir "$viz"

* J-PAL colour palette
global jpal_orange "227 89 37"
global jpal_teal   "47 170 159"
global jpal_green  "145 183 127"
global jpal_yellow "244 195 0"
global jpal_navy   "45 97 110"
global jpal_gray   "160 160 160"

*Run analysis
do "$code/01_Dataset engineering.do"

display as result "Greedy job analysis completed successfully."
