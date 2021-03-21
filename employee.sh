#! /bin/bash

isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=100
totalWorkingDays=20

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWokingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
		case $empCheck in
			$isFullTime) empHrs=8 ;;
			$isPartTime) empHrs=4 ;;
			*) empHrs=0 ;;
		esac

		totalEmpHrs=$(($totalEmpHrs*$empHrs))

done

totalSalary=$(($totalEmpHrs*$empRatePerHr))

echo "Total Salary:" $totalSalary
