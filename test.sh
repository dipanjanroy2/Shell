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
..................................................................................

ps -ef |grep weblogic | awk '{print $2}' > /dev/null

if [ "$?" -eq 0 ]; then

    #If they are equal then print this

    echo "Weblogic is running"

else

    #else print this

    echo "Weblogic has stopped"

    echo "warning" at 'date +%Y_%m_%d_%H:%M:%S' 

    printf -v date '%(%Y-%m-%d %H:%M:%S)T\n' -1 

    

fi

..............

#Initializing two variables

var=$(ps -ef |grep weblogic | awk '{print $2}')

#var=no

echo boom boom $var

if [ ps -ef |grep weblogic | awk '{print $2}' > /dev/null ]

then

    #If they are equal then print this

    echo "Weblogic is running"

else

    #else print this

    echo "Weblogic has stopped"

    echo "warning" at 'date +%Y_%m_%d_%H:%M:%S' 

    printf -v date '%(%Y-%m-%d %H:%M:%S)T\n' -1 

    

fi

..................................

#Initializing two variables

#var=$(ps -ef |grep weblogic | awk '{print $2}')

var=0

echo boom boom $var

if [ $var > 0 ]

then

    #If they are equal then print this

    echo "Weblogic is running"

else

    #else print this

    echo "Weblogic has stopped"

    echo "warning" at 'date +%Y_%m_%d_%H:%M:%S' 

    printf -v date '%(%Y-%m-%d %H:%M:%S)T\n' -1 

    

fi

................................

https://stackoverflow.com/questions/3043978/how-to-check-if-a-process-id-pid-exists

semi Final:

pid=$(ps -ef |grep weblogic | awk '{print $2}') 

ps -ef |grep weblogic | awk '{print $2}' > /dev/null

if [ "$?" -eq 0 ]; then

    echo "Weblogic is running {process id: $pid}"

else

    echo "Weblogic has stopped $pid"

    echo -e "Warning: Weblogic has stopped" on `hostname -i` | mutt -s "Weblogic has stopped :" at `date +%Y_%m_%d_%H:%M:%S` dipanjanroy369@gmail.com" 

fi




