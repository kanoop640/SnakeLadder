echo "            Welcome to Snake and Ladder Game "
count=100
declare -A arr[100]
print()
{
echo "----------------------------------------------------"
	for(( i=0;i<10;i++ ))
	{
		if(( $i%2!=0 ))
		then
		count=$(( count-10 ))
		fi
		for(( j=0; j<10; j++ ))
		{
			if(( $i%2==0 ))
			then
			arr[$j]=$count
			if(( $count>99 ))
			then
			echo -ne " ||"${arr[$j]}
			else
			echo -ne " ||"${arr[$j]}
			fi
			count=$(( count-1 ))
			else
			count=$(( count+1 ))
			arr[$j]=$count
			if(( $count<10 ))
			then
			echo -ne " ||0"${arr[$j]}
			else
			echo -ne " ||"${arr[$j]}
			fi
			fi
		}
		echo
		if(( $i%2!=0 ))
		then
			count=$(( count-10 ))
		fi
	}
echo "----------------------------------------------------"
}

rnd=$(( 1+RANDOM%6 ))
player1=1
player2=2
echo $rnd
