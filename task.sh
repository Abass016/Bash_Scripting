echo -e "choose either 1 or 2 : \c"
read choice

echo -e "enter the function you are operating with : \c"
read file_name

if [ -f $file_name  ]
then
 echo "$file_name found"
   
    if [ -w $file_name ]
    then
     echo "$file_name can be written"    
            
        if [[ $choice == 1 ]]
        then
            echo "Enter text to append use CTRL D TO QUIT"
            cat >> $file_name
            echo -e "enter some test : \c"
            
           
        elif [[ $choice == 2 ]]
        then
            echo -e "Enter text to remove: Use CTRL do quit : \c "
            read pattern
            sed -i "/$pattern/d" "$file_name"
            echo "removed lines containing '$pattern' from $file_name."
        else
            echo "error"
        fi    
    else
        echo "$file_name cant be written"

    fi
else 
 echo "$file_name cant be found"
fi  
     

     

