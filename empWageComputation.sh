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

<<<<<<< HEAD

=======
totalWorkingHours=0
totalDays=0
wagesMonth=0
wagesTime=0
while [ $totalWorkingHours -lt 100 -a  $totalDays -lt 20 ]
do
	wagesMonth=$((wagesMonth+dailyWage))
	wagesTime=$((wagesTime+wagePerHour))
	totalWorkingHours=$((totalWorkingHours+1))
	totalDays=$((totalDays+1))
done
[ $totalDays -eq 20 ] && echo "Wages for total working days is "$wagesMonth || echo "Wages for total working time is "$wagesTime 
