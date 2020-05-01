#!/bin/bash
# total_days=1825
total_days=244 

for (( day_increment=1; day_increment <= total_days; day_increment++ ))
do
    day=$(date -d "$day_increment day" | awk '{print $1}')
    # echo "Day = $day"
    if   [[ $day != "Sat" ]] && [[ $day != "Sun" ]]; then 
    	# echo "Day = $day"
    	title=$(date -d "$day_increment day" | awk 'BEGIN { OFS = "_" }{print $3,$2,$6}')
    	echo "Title = $title"
    	printf "P:\n\n------------------------------------------------------------------------------------------\nDO:\n\n------------------------------------------------------------------------------------------\nSTATUS:\n\n------------------------------------------------------------------------------------------\nR:">$title
        # cat $title
    fi	
done
