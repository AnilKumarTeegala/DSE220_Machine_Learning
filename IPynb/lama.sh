#for x in 0 1 2 3 4 5 6 7 8 9; do
  #for y in 0 1 2 3 4 5 6 7 8 9; do
  	#echo $x$y 
	#done
#done
count=0;
for element in "data/st0009ts.txt" "data/st1019ts.txt" "data/st2029ts.txt" "data/st3039ts.txt" "data/st4049ts.txt" "data/st5060ts.txt" "data/st6070ts.txt" "data/st7080ts.txt" "data/st8090ts.txt"; do
	#echo "$element" 
	cat $element | grep -ni 'WY \| WY &[0-9]' | grep -Eoi '^[^:]+'>>"data/lama$count.txt"
	#US=$($element | grep -ni 'U.S. \| US & [0-9]'
	#| grep -Eoi '^[^:]+'); echo 'US'   $US >> "$element";
	#AL=$($element | grep -n 'AL \| AL &[0-9]'
	#| grep -Eo '^[^:]+'); echo 'AL'   $AL >> "$element";
	((count+=1))
done

