repeated_digits=()
for ((num = 0; num <= 100; num++));
  do
  num_str=$(echo "$num" | tr -d '-')
  digits=($(echo "$num_str" | sed 's/./& /g'))
  if [[ ${#digits[@]} -eq 2 && ${digits[0]} -eq ${digits[1]} ]]; 
   then
    repeated_digits+=("$num")
  fi
done
echo "Digits repeated twice within the range 0-100: ${repeated_digits[@]}"

