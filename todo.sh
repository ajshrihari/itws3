#!/bin/bash
function list(){
echo "$1 $2" >> todo.txt

}
function sorting(){
cat --number todo.txt | head -5
}
function data(){
cat --number todo.txt
}
function sort1(){
cat --number todo.txt | tr -s " " | sort -nr -t" " -k2>file1.txt
cat file1.txt |{ while read line
do
line=`cut -d " " -f2`
if [ $line -ne 0 ]
then
((c++))
fi 
done
}
sed `c a '---------COMPLETED TASKS------------> ' file1.txt
cat file1.txt
}
if [ "$1" == "-A" ]
then
list "$2" "$3"
fi



}
function complete(){
cat todo.txt 

}
sed `c a '---------COMPLETED TASKS------------> ' file1.txt
cat file1.txt
if [ "$1" == "-A" ]
then
list "$2" "$3"
fi

if [ "$1" == "-T" ]
then 
sorting
fi

if [ "$1" == "-W" ]
then 
data
fi
if [ "$1" == "-P" ]
then 
sort1
fi


