#!/bin/bash
# To list the different elements in two given arrays. By Christine MEI
# define a function mycompare, with the two arrays as parameters.

array1=(20 17 14 1 2 3 4 5 6 7 8 30 54 9)
array2=(5 7 9 11 1 3 13 15 17 30 40 64 56)

echo "Array1 is :"
echo ${array1[@]}

echo "Array2 is :"
echo ${array2[@]}

echo '---------------------------------'

mystr=''
function mycompare()
{
   arr1=$1
   arr2=$2
    for i in ${arr1[*]}
    do
        tag=0
        for j in ${arr2[*]}
        do
            if [[ $i -eq $j ]]
            then
                tag=1
                break
            else
                continue
            fi
        done
        if [[ $tag == 0 ]]
        then
            mystr=$mystr${i}" "
        fi
        done
}
mycompare  "${array1[*]}" "${array2[*]}"
mycompare  "${array2[*]}" "${array1[*]}"

echo "The different elements between the two Arrays are:"
echo "$mystr"










:<<!

for i in ${array1[@]}
do
tag=0
for j in ${array2[@]}
do
if [[ $i -eq $j ]]
then
tag=1
break
else
continue
fi
done
if [[ $tag == 0 ]]
then
mystr=$mystr${i}" "
fi
done


for i in ${array2[@]}
do
#echo  "-----The element in array2 is:"$i
tag=0
for j in ${array1[@]}
do
#  echo " the element in array1 is:"$j
if [[ $i -eq $j ]]
then
tag=1
#echo " +++++++ $i is  $j "
break
else
continue
fi
done
if [[ $tag == 0 ]]
then
mystr=$mystr${i}" "
#echo "mystr is:"$mystr
fi
done

echo "The different elements between the two Arrays are:"
echo  $mystr
for var in ${array2[@]}
do
echo $var
done

str=''
for i  in ${array1[@]}
do
str=${str}${i}" "
done

for j in ${array2[@]}
do
str=$str$j" "
done
echo $str
!

