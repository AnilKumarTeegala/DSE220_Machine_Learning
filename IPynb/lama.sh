count=0;
WY="WY"
US="US"
AL="AL"	
line2=$(cat data/st7080ts.txt | egrep -ni 'U.S. | US &[0-9]' | grep -Eoi '^[^:]+')
echo "$US   $line2" 


