#!/bin/bash
MIN=10
MAX=300
STEP=10
COUNT=$MIN
LineCount=1
matrix=()
writematrix=()
while [ $COUNT -le $MAX ]; do
	(/usr/bin/time  ./mmp $COUNT ) >> data.txt 2>&1	
	let COUNT=COUNT+STEP
done

input="./data.txt"
while IFS= read -r line
do
  let rem=($LineCount%2)
  newline=$(echo $line | tr -d  s) 
  matrix+=($newline)
  if [ $rem -eq 1 ]; then
     writematrix+=(${matrix[1]})
  else
   writematrix+=(${matrix[1]})
   writematrix+=(${matrix[2]})
   writematrix+=(${matrix[4]})
   writematrix+=(${matrix[6]})
   echo ${writematrix[0]}","${writematrix[1]}","${writematrix[2]}","${writematrix[3]}","${writematrix[4]} >> processed.csv
   writematrix=()
  fi 
  matrix=()
  let LineCount=LineCount+1
done < "$input"

#! code for ploting data
for FILE in processed.csv; do
gnuplot -p << EOF
set datafile separator ","
set xlabel "matrix size"
set xrange [10:$MAX]
set ylabel "program time"
set title "Execution time performance"
plot "$FILE" using 1:2 title "program time", \
     "$FILE" using 1:3 title "real time",\
     "$FILE" using 1:4 title "usr time",\
     "$FILE" using 1:5 title "sys time"

EOF
done
