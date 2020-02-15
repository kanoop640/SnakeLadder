fname()
{
 read -p "Enter your first name " fna
 f=$(echo "$fna" |awk '/^[a-zA-Z]{5,10}$/{print $0}')
 if [[ $f ]]
 then
	echo $f
 else
	echo "First name should be greter than 5 and less than 10 and should be between a to z "
	fname
 fi
}
lname()
{
 read -p "Enter your last name " lna
 l=$(echo "$lna" |awk '/^[a-zA-Z]{5,10}$/{print $0}')
 if [[ $l ]]
 then
	echo $l
 else
	echo "Last name should be greter than 5 and less than 10 and should be between a to z "
	lname
 fi
}
mobile()
{
 read -p "Enter your mobile number " mob
 m=$(echo "$mob" |awk '/^[6-9]{1}[0-9]{9}$/{print $0}')
 if [[ $m  ]]
 then
	echo $m
 else
	echo "Mobile number should be 10 digits  "
	mobile
 fi
}
mail()
{
 read -p "Enter your emil id " email
 e=$(echo "$email" |awk '/^([a-zA-Z0-9]+)@([a-zA-Z]+)([.com])?([.co.in])?([.in])?/{print $0}')
 if [[ $e ]]
 then
	echo $e
 else
	echo "Invalid Password "
	mail
 fi
}
password()
{
 read -p "Enter your password " passwd
 p=$(echo "$passwd" |awk '/^([a-zA-Z0-9@#$%&]+){8,15}$/{print $0}')
 if [[ $p ]]
 then
	echo $p
 else
	echo "Password should be minimum 8 character of number and should be less then 15 number or character "
	password
 fi
}
fname
lname
mobile
mail
password
