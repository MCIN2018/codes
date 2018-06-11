#! /bin/bash
# to generate test_result.xml
# 3 ( 2*2*0 + 2*1*1 +1*1) stands for PASSED, since 0 1 1 stands for Passed; 1 for FAILED;5 for SKIP.

echo '<?xml version="1.0" encoding="GBK"?>'>/tmp/test_result.xml

echo '<result>'>>/tmp/test_result.xml

while read line
do
if echo $line|grep  "case"> /dev/null 2>&1
then
echo "<$line>"$line": ">>/tmp/test_result.xml
keep_line=`echo $line`
else
result=`echo $line|awk '{x=x+(4*$1+2*$2+$3)};END{print x}'`
# to get the test result with the code: 3: PASSED;1: FAILED;5: SKIP;else:INVAILD.
if [ $result == 3 ]
then
echo "PASSED">>/tmp/test_result.xml
elif [ $result == 1 ]
then
echo "FAILED">>/tmp/test_result.xml
elif [ $result == 5 ]
then
echo "SKIP">>/tmp/test_result.xml
else
echo "INVALID. Please check the result!">>/tmp/test_result.xml
fi

echo "</$keep_line>">>/tmp/test_result.xml
fi
done</tmp/test_result.txt

echo '</result>'>>/tmp/test_result.xml
