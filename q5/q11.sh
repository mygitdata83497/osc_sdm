#!/bin/bash

cal_sal() {
	local basic_sal=$1
	local da=40
	local hra=20

	local da=$(echo "scale=2; $basic_sal * $da / 100" | bc)
	local hra=$(echo "scale=2; $basic_sal * $hra / 100" | bc)

	local gross=$(echo "scale=2; $basic_sal + $da +$hra" | bc)

	echo "Gross salary = $gross"
}

echo "Enter basic salary :"
read basic_sal

cal_sal $basic_sal

