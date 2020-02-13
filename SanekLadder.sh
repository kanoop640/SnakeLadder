echo "            Welcome to Snake and Ladder Game "
len=100
declare -A arr[100]
for(( k=0;k<100;k++ ))
do
arr[$k]=$len
len=$(( len-1 ))
done
count=0
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
imran=1
RollTime=0
read -p "Enter choice to playe for player 1 for player1 and 2 for player2 " ch
while(( $anoop!=100 && $imran!=100 ))
do
	#clear
	if(( $anoop==99  ))
	then
		anoop=1
		echo "Anoop bitten by snake he reached at position : " $anoop
	fi
	if(( $imran==99  ))
	then
		imran=1
		echo "Imran bitten by snake he reached at position : " $imran
	fi
	rnd=$(( 1+RANDOM%6 ))
	if(( $ch==1 ))
	then
		echo "Anoo's random number is : " $rnd
	  	anoop=$(( anoop+rnd ))
		if(( $anoop>100 ))
		then
			anoop=$(( anoop-rnd ))
		fi
		echo "Anoop is at position : "$anoop
		ch=2
		if(( $anoop==100 ))
		then
			echo "Anoop won"
		fi
	elif(( $ch==2 ))
	then
		echo "Imran's random number is : " $rnd
		imran=$(( imran+rnd ))
		if(( $imran>100 ))
		then
			imran=$(( imran-rnd ))
		fi
		echo "Imran is at position : "$imran
		ch=1
		if(( $imran==100 ))
		then
			echo "Imran won"
		fi
	
	fi
	RollTime=$(( RollTime+1 ))
done
echo $RollTime "times roll is done "
print






























