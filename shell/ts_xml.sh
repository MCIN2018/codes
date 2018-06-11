#! /bin/bash  

echo '<?xml version="1.0" encoding="GBK"?>'>test_result.xml

echo '<result>'>>test_result.xml

while read line
do
if echo $line|grep  "case"> /dev/null 2>&1
then
    echo "<$line>"$line": ">>test_result.xml
    keep_line=`echo $line`

else

    echo $line**********
    result=`echo $line|awk '{x=x+(4*$1+2*$2+$3)};END{print x}'`
    echo result is $result
# to get the test result with the code
    if [ $result == 3 ]
    then
        echo "PASSED">>test_result.xml
    elif [ $result == 1 ]
    then
         echo "FAILED">>test_result.xml
    elif [ $result == 5 ]
    then
         echo "SKIP">>test_result.xml
    else
        echo "Please check the result!">>test_result.xml
    fi
echo "</$keep_line>">>test_result.xml

fi
done<test_result.txt

echo '</result>'>>test_result.xml






source ./create_xml.sh

:<<!
put_head 'xml version="1.0" encoding="GBK"'
tag_start '投递信息'  
tag_start '硬件'  
tag_value '网卡' 1  
tag_end '硬件'  
tag_end '投递信息'


put(){
echo '<'${*}'>' > $outfile
}

put_head(){
put '?'${1}'?'
}

out_tabs(){
tmp=0
tabsstr=""
while [ $tmp -lt $((tabs)) ]
do
tabsstr=${tabsstr}'\t'
tmp=$((tmp+1))
done
echo -e -n $tabsstr >> $outfile
}

tag_start(){
out_tabs
put $1
tabs=$((tabs+1))
}

tag_end(){
tabs=$((tabs-1))
out_tabs
put '/'${1}
}

tag_value(){
out_tabs
str=""
str=${1}' value="'${2}'"/'
put $str
}

<result>
<testcase_1> testcase1:PASSED</testcase_1>
<testcase_2>testcase_2:FAILED</testcase_2>
<testcase_3>testcase3:SKIP</testcase_3>
</result>
!
