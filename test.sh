var=''

alert=""

if[ $var = "alert" ];

then 

    echo "This is just testing $var"

    echo " " on | mutt -s " " : $var at 'date +%Y_%m_%d_%H:%M:%S' dipanjanroy369@gmail.com"

fi
.....................................
....................................................................
#Initializing two variables
var=$(ps -af | grep -w pid | awk '{print $2}')
b=20

echo boom boom $var

if [ $var == $b ]
then
    #If they are equal then print this
    echo "a is fc equal to b"
else
    #else print this
    echo "Weblogic has stopped"
fi
