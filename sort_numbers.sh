#!/bin/bash
echo "Insert 10 numbers:"
#read -p "number 1:" num1
#read -p "number 2:" num2
#read -p "number 3:" num3
#read -p "number 4:" num4
#read -p "number 5:" num5
#read -p "number 6:" num6
#read -p "number 7:" num7
#read -p "number 8:" num8
#read -p "number 9:" num9
#read -p "number 10:" num10

i=0
while [ $i -lt 10 ]; do
	read -p "number $((i+1)):" num
	list[$i]=$num
	((i++))
done
#list=( $num1 $num2 $num3 $num4 $num5 $num6 $num7 $num8 $num9 $num10 )
read -p "insert sort option:
'-r' for descending order
'-u' for removed duplicates
'-k' for columns 
OR just hit enter for default:
" sortop
printf "%s\n" "${list[@]}" | sort -n $sortop