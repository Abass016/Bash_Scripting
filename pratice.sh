# echo "hello world"

# name=abass
# echo "my name is $name "

# read -p "username : " username
# read -sp "password : " password
# echo 
# echo "username : $username"
# echo "password : $password"

# echo "Enter names"
# read 
# echo "Names : $REPLY"
# name=("$@")
# echo $0 $1 $2 $3  ' > echo $1 $2 $3 '
# echo $@
# echo $#
# count=3
# if [ $count == 12 ]
# then
#  echo "true"
# elif [ $count == 3 ]
# then
#  echo "not true" 
# else 
#  echo "false"
# fi 


  echo -e "enter file namr : \c"
  read file_name

 if [ -f $file_name ]
 then
   if  [ -w $file_name ]
   then
    echo "Type some text data , Use CTRL D to exist"
    cat >> $file_name
   else
    echo "$file_name does not have permission"
   fi 


# else
#  echo "$file_name does not exist  "
# fi  

# echo -e "enter your age : \c"
# read age

# if [ "$age" -gt 18 ]  && [ "$age" -lt 30 ]
# then
#  echo "Age Valid"

#  else 
#   echo "Age not Valid"
# fi  



# age=25

# if [ "$age"  -gt 18 ] || [ "$age" -lt 60 ]
#  then
#   echo "valid age"

#  else
#   echo "invalid age"
# fi 

# echo -e "Enter first number : \c"
# read num

# echo -e "enter seond number : \c"
# read num1

# echo $(( num * num1 )


# num1=24.4
# num2=5

# echo "$num1 + $num2" | bc

# num=27
# echo "scale=3;sqrt($num)" | bc -l/

# vehicle=$1


#  case $vehicle in 
#    "car" )
#    echo "rent of $vehicle is 100 dollars" ;;
#    "bus" )
#    echo "rent of $vehicle is 150 dolloars" ;;
#    "lorry" )
#    echo "rent of $vehicle is 120 dollors" ;;
#    * )
#    echo "unknown vehicle"

#  esac   

# namess=('abass' 'sobur' 'taslim' 'abdulah')
# echo ${namess[@]}
# echo ${namess[2]}
# namess[2]="ayomide"                                                             
# echo ${namess[@]}
# namess[4]="israel"
# echo ${namess[@]}
# unset namess[2]
# echo ${namess[@]}


# n=1
# while [ $n -le 15 ]
# do 
#  echo $n
#  n=$((n+1))
#  sleep 1
# done 

# for i in {1..20..2}
# do 
#  echo $i
# done 

# for (( e=0; e<15; e++ ))
# do
#  echo $e
# done 

# select name in SOBUR ABASS TASLIM ABDULAH AYOMIDE
# do
#  echo "$name selected"
# done 



# for (( i=0;  i<=10; i++ ))
# do 
#  if [ $i -ge 6 ]
#  then
#   break
# #  fi 
#  echo $i
# done 
# function Greeting(){
#    echo "hello world"
# }

# Greeting

# greetings(){
#  echo    $1 $2 $3 $4
# }    

# greetings hello
# greetings sobur
# greetings good morning


# greetings(){
#     name=SOBUR
#     echo "my name is $name"
# }

# name=Malik
# echo "my name is $name : after"
# greetings $name
# echo "my name is $name : before"

# greetings(){
#   local  name=SOBUR
#     echo "my name is $name"
# }

# name=Malik
# echo "my name is $name : after"
# greetings $name
# echo "my name is $name : before"


# useage(){
#     echo "Enter an arguement"
#     echo "USAGE : $0 file name"
# }

# if_file_e (){
#     local file=$1
#     [[ -f if_file_e ]] return 0 || return 1
# }
# [[ $# -eq 0 ]] && useage


# var=20

# readonly

# varrr=50

# echo "this is number $var"


# hello(){
#     echo "this is a car"
# }

# readonly -f hello

# helle(){
#     echo "this is a monkey"
# }

# readonly -f helle

# readonly -f



echo 'A simple quiz Game"




















