count=0;
WY="WY"
US="US"
AL="AL"
for element in "data/st0009ts.txt" "data/st1019ts.txt" "data/st2029ts.txt" "data/st3039ts.txt" "data/st4049ts.txt" "data/st5060ts.txt" "data/st6070ts.txt" "data/st7080ts.txt" "data/st8090ts.txt"; do
	line1=$(cat $element | grep -ni 'WY \| WY &[0-9]' | grep -Eoi '^[^:]+')
	echo "$WY   $line1" >> "new_$element";
	
	line2=$(cat $element | grep -ni 'U.S. \| US &[0-9]' | grep -Eoi '^[^:]+')
	echo "$US   $line2" >> "new_$element";

	line3=$(cat $element | grep -n 'AL \| AL &[0-9]' | grep -Eoi '^[^:]+')
	echo "$AL   $line3" >> "new_$element";
	((count+=1));
done

