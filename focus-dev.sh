#!bin/bash

# UPDATE CODE BELOW
# declare all the programs you want to open when starting your workday
declare -a programs_close=("Skype for Business" "Skype" "Microsoft Outlook" "Slack" "Microsoft Teams")
declare -a programs_open=("Visual Studio Code")

# DO NOT UPDATE CODE BELOW
# Unless you know what you are doing
function ProgressBar {
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done
    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")
    printf "\rProgress : [${_fill// /#}${_empty// /-}] ${_progress}%%"
}

IFS=""
progress_count=0
for i in "${programs_close[@]}"
do
   ((progress_count++))
   osascript -e 'quit app "'"${i}"'"'
   ProgressBar ${progress_count} ${#programs_close[@]}
done

progress_count=0
for i in "${programs_open[@]}"
do
   ((progress_count++))
   open -a ${i}
   ProgressBar ${progress_count} ${#programs_open[@]}
done

printf '\nAnd now focus!\n'
