echo "            Welcome to Snake and Ladder Game "
count=0
len=100
declare -A arr[100]
for(( k=0;k<100;k++ ))
do
arr[$k]=$len
len=$(( len-1 ))
done

print()
{
echo "----------------------------------------------------"
	for(( i=0;i<10;i++ ))
	{
		if(( $i%2!=0 ))
		then
			count=$(( count+9 ))
		fi
		for(( j=0; j<10; j++ ))
		{	
			if(( $i%2==0 ))
			then
				if(( ${arr[$count]}==99 ))
				then
					echo -ne "||"${arr[$count]}
				else
					echo -ne " ||"${arr[$count]}
				fi
				count=$(( count+1 ))
			else
				if(( ${arr[$count]} > 9 ))
				then
					echo -ne " ||"${arr[$count]}
				else
					echo -ne " ||0"${arr[$count]}
				fi
				count=$(( count-1 ))
			fi
			
		}
		if(( $i%2!=0 ))
		then
			count=$(( count+11))
		fi
		echo
	}
echo "----------------------------------------------------"
}
anoop=1
imran=2
read -p "Enter choice to playe for player 1 for player1 and 2 for player2 " ch
while(( $anoop!=100 ))
do
	rnd=$(( 1+RANDOM%6 ))
	echo $rnd
	if(( $ch==1 ))
	then
	  	anoop=$(( anoop+rnd ))
		if(( $anoop>100 ))
		then
			anoop=$(( anoop-rnd ))
		fi
		echo $anoop
		if(( $anoop==100 ))
		then
			echo "Anoop won"
		fi
	fi
done
































