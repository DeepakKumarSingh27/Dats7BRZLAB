
numbers=(-1 2 -3 4 -5 6)
found=false
# Loop through all combinations of three integers
for ((i = 0; i < ${#numbers[@]} - 2; i++)); 
  do
  for ((j = i + 1; j < ${#numbers[@]} - 1; j++));
   do
    for ((k = j + 1; k < ${#numbers[@]}; k++));
      do
      sum=$((numbers[i] + numbers[j] + numbers[k]))
      if [ $sum -eq 0 ]; 
        then
        found=true
        echo "Three integers that sum to zero: ${numbers[i]} ${numbers[j]} ${numbers[k]}"
      fi
    done
  done
done

if [ $found = false ]; 
   then
  echo "No combination of three integers sum to zero."
fi
