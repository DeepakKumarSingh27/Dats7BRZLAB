
numbers=()
for ((i = 0; i < 10; i++)); do
  number=$((RANDOM % 900 + 100)) 
  numbers+=("$number")
done
echo "Generated numbers: ${numbers[@]}"
second_smallest=${numbers[0]}
smallest=${numbers[0]}
second_largest=${numbers[0]}
largest=${numbers[0]}

for number in "${numbers[@]}";
 do
  if [[ $number -lt $smallest ]];
 then
    second_smallest=$smallest
    smallest=$number
  elif [[ $number -lt $second_smallest && $number -ne $smallest ]]; 
then
    second_smallest=$number
  fi

  if [[ $number -gt $largest ]]; 
  then
    second_largest=$largest
    largest=$number
  elif [[ $number -gt $second_largest && $number -ne $largest ]]; 
   then
    second_largest=$number
  fi
done
echo "Second Smallest: $second_smallest"
echo "Second Largest: $second_largest"
