#!bin/bash

function ProgressBar {
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done
    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")
    printf "\rProgress : [${_fill// /#}${_empty// /-}] ${_progress}%%"
}

declare -a programs=("Skype for Business" "Skype" "Microsoft Outlook" "Slack" "Microsoft Teams" "Visual Studio Code")

## now loop through the above array
IFS=""
progress_count=0
for i in "${programs[@]}"
do
   ((progress_count++))
   # To gracefully quit, we use osascript instead of the kill command. The kill command might result in loss of data.
   osascript -e 'quit app "'"${i}"'"'
   ProgressBar ${progress_count} ${#programs[@]}
   # or do whatever with individual element of the array
done

printf '\nFinished!\n'



