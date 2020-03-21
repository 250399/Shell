#!/bin/bash


echo "Welcome to Employee Wage Computation Program"


[ $((RANDOM%2)) -eq 1 ] && echo Employee Present || echo Employee Absent


wagePerHour=20
fullDayWork=8
dailyWage=$((wagePerHour*fullDayWork))
echo "Daily Employee Wage is :"$dailyWage


partTimeEmployee=Sam
partTimeWork=$((fullDayWork/2))
partTimeWage=$((partTimeWork*wagePerHour))
echo "Part time wage of "$partTimeEmployee "is" $partTimeWage
