echo "            Welcome to Snake and Ladder Game "
count=100
declare -A arr[100]
print()
{
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
			count=$(( count-1 ))
			echo -ne " "${arr[$j]}
			else
			count=$(( count+1 ))
			arr[$j]=$count
			echo -ne " "${arr[$j]}
			fi
		}
		echo
		if(( $i%2!=0 ))
		then
			count=$(( count-10 ))
		fi
	}
}
print

