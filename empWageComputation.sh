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

isPresent
dailyWage
partTimeWage


read -p"1.Attendance	2.Daily Wage	3.Part Time Wage 4.Exit" ch
case $ch in
	"1")isPresent;;
	"2")dailyWage;;
	"3")partTimeWage;;
	"4")exit;;
	"*")echo Invalid choice
esac
