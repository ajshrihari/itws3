read n
sum=0
for i in `seq 1 $n`
do
read a
sum=$(( $sum + $a ))
done


avg=$(echo "scale=4; 1.0 * $sum / $n" | bc -l)
echo "Average: " $avg
