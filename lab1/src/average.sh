echo $#

sum=0
count=$#

for i in $@
do
   sum=$((sum + $i))
done

echo $((sum / count))