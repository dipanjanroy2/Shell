# Shell




In Linux (Shell), there are two types of variable:
(1) System variables - Created and maintained by Linux itself. This type of variable defined in CAPITAL LETTERS.
(2) User defined variables (UDV) - Created and maintained by user. This type of variable defined in lower letters.

Shell variables 
- var refers to the name, $var to the value
    - t = 100  #Sets var t to value 100
    - echo ”\$t = $t” #will print: $t = 100
- Remove a variable with unset var
- Names begin with alpha characters and include alpha, numeric, or underscore



Read command - The read command allows you to prompt for input and store it in a variable. shell allows to prompt for user input.
Syntax: 
read varname [more vars] 
or
read –p "prompt" varname [more vars]

words entered by user are assigned to varname and “more vars”
last variable gets rest of input line.

Passing arguments to a shell script

Any shell script you run has access to (inherits) the environment variables accessible to its parent shell. In addition, any arguments you type after the script name on the shell command line are passed to the script as a series of variables.

The following parameters are recognized:


$*
Returns a single string (``$1, $2 ... $n'') comprising all of the positional parameters separated by the internal field separator character (defined by the IFS environment variable).

$@
Returns a sequence of strings (``$1'', ``$2'', ... ``$n'') wherein each positional parameter remains separate from the others.

$1, $2 ... $n
Refers to a numbered argument to the script, where n is the position of the argument on the command line. In the Korn shell you can refer directly to arguments where n is greater than 9 using braces. For example, to refer to the 57th positional parameter, use the notation ${57}. In the other shells, to refer to parameters with numbers greater than 9, use the shift command; this shifts the parameter list to the left. $1 is lost, while $2 becomes $1, $3 becomes $2, and so on. The inaccessible tenth parameter becomes $9 and can then be referred to.

$0
Refers to the name of the script itself.

$#
Refers to the number of arguments specified on a command line.


      if [ expression ];

      then

            statements

      elif [ expression ];

      then

            statements

      else

            statements

      fi



-eq - is equal to - if [ "$a" -eq "$b" ]

-ne - is not equal to - if [ "$a" -ne "$b" ]

-gt - is greater than - if [ "$a" -gt "$b" ]

-ge - is greater than or equal to - if [ "$a" -ge "$b" ]

-lt - is less than - if [ "$a" -lt "$b" ]

-le - is less than or equal to - if [ "$a" -le "$b" ]

< - is less than - (("$a" < "$b"))

<= - is less than or equal to - (("$a" <= "$b"))

> - is greater than - (("$a" > "$b"))

>= - is greater than or equal to - (("$a" >= "$b"))


[ n1 -eq n2 ]  (true if n1 same as n2, else false)

[ n1 -ge n2 ]  (true if n1greater then or equal to n2, else false)

[ n1 -le n2 ]  (true if n1 less then or equal to n2, else false)

[ n1 -ne n2 ]  (true if n1 is not same as n2, else false)

[ n1 -gt n2 ]  (true if n1 greater then n2, else false)

[ n1 -lt n2 ]  (true if n1 less then n2, else false)


String Comparisons:

= - is equal to - if [ "$a" = "$b" ]

== - is equal to - if [ "$a" == "$b" ]

!= - is not equal to - if [ "$a" != "$b" ]

< - is less than, in ASCII alphabetical order - if [[ "$a" < "$b" ]]

> - is greater than, in ASCII alphabetical order - if [[ "$a" > "$b" ]]


-z - string is null, that is, has zero length





Examples:
[ s1 = s2 ]  (true if s1 same as s2, else false)

[ s1 != s2 ]  (true if s1 not same as s2, else false)

[ s1 ]   (true if s1 is not empty, else false)

[ -n s1 ]   (true if s1 has a length greater then 0, else false)

[ -z s2 ]   (true if s2 has a length of 0, otherwise false)


number.sh

#!/bin/bash

      echo -n “Enter a number 1 < x < 10: "

      read num

      if [ “$num” -lt 10 ]; then

            if [ “$num” -gt 1 ]; then

                  echo “$num*$num=$(($num*$num))”

            else

                  echo “Wrong insertion !”

            fi

      else

            echo “Wrong insertion !”

      fi
string.sh

#! /bin/bash

word=a

if  [[ $word == "b" ]]
then
  echo "condition b is true"
elif [[ $word == "a" ]]
then 
  echo "condition a is true" 
else
  echo "condition is false"    
fi

