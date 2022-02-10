#!/bin/bash
# inspired by https://github.com/cdw1p/Green-Commit

arr[0]="watering: 🌲"
arr[1]="watering: 🌾"
arr[2]="watering: 🍀"
arr[3]="watering: 🌳"
arr[4]="watering: 🌻"
arr[5]="watering: 🌷"
arr[6]="watering: 🌴"

rand=$[$RANDOM % ${#arr[@]}]
d=`date '+%Y-%m-%dT%H:%M:%SZ'`

echo "## 🌦 LAST WATERED AT: ${d}" > farm.md

git config --local user.email "mbah.okop@gmail.com"
git config --local user.name "Riyan Firmansyah"
git commit -am "${arr[$rand]} (at ${d})"