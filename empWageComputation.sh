#!/bin/bash


echo "Welcome to Employee Wage Computation Program"

isPresent () {
[ $((RANDOM%2)) -eq 1 ] && echo Employee Present || echo Employee Absent
}

dailyWage () {
	wagePerHour=20
	fullDayWork=8
	dailyWage=$((wagePerHour*fullDayWork))
	echo "Daily Employee Wage is :"$dailyWage
}

partTimeWage () {
	partTimeEmployee=Sam
	partTimeWork=$((fullDayWork/2))
	partTimeWage=$((partTimeWork*wagePerHour))
	echo "Part time wage of "$partTimeEmployee "is" $partTimeWage
}

monthlyWages () {
	totalDays=20
	monthlyWage=$((totalDays*dailyWage))
	echo "Monthly wage is "$monthlyWage
}

wagesForWorkHours () {

	totalWorkingHours=0
	wagesTime=0
	partialWages=0
	while [ $totalWorkingHours -lt 100  ]
	do
		wagesTime=$((wagesTime+wagePerHour))
		totalWorkingHours=$((totalWorkingHours+1))
	done
	echo "Wages for total working time is "$wagesTime
	echo "Wages for total partial time is "$((wagesTime/2))

}

isPresent
dailyWage
partTimeWage


read -p"1.Attendance	2.Daily Wage	3.Part Time Wage 4.Exit" ch
case $ch in
	"1")isPresent;;
	"2")dailyWage;;
	"3")partTimeWage;;
	"4")exit;;
	*)echo Invalid choice;;
esac
monthlyWages

wagesForWorkHours


for i in {0..19}
do
	arr[$i,0]=$dailyWage
	arr[$i,1]=$monthlyWage
done

for i in {0..19}
do
	echo "Daily wage: "${arr[$i,0]} "Toral Wage :"${arr[$i,1]}
done

declare -A array
for i in {0..19}
do
	r=$((RANDOM%3))
	if [ $r -eq 0 ]
	then
		array[$i.0.0]=$i
		array[$i.1.0]=0
		array[$i.0.2]=$monthlyWage
	elif [ $r -eq 1 ]
	then
		array[$i.0.0]=$i
		array[$i.1.0]=$dailyWage
		array[$i.0.2]=$monthlyWage
	else
		array[$i.0.0]=$i
		array[$i.1.0]=$partTimeWage
		array[$i.0.2]=$monthlyWage
	fi
done

for i in {0..19}
do
	echo "Day :"${array[$i.0.0]} "Wage :"${array[$i.1.0]} "Total Wage :"${array[$i.0.2]}
done
