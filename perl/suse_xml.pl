#!/usr/bin/perl
###### to generate text_result xml, by Christine MEI.
# 1: save test_result.txt as a hash, with testcasenames as key and the test results as values.
# 2: loop the hash to print it to xml file.
######

use strict;
use warnings;

my %xml_hash;
my $test_result_xml;
my $test_result_txt;
my $current_key; # to keep the current key for saving the test-result code in the hash.

$test_result_xml="test_result.xml";
$test_result_txt="test_result.txt";

# to generate test_result.xml

open (RESULT,">$test_result_xml")|| die "Can't open text_result.xml: $!\n";
print RESULT "\<?xml version=\"1.0\" encoding=\"GBK\"?\>","\n";
print RESULT "\<result\>","\n";

# to save test_result.txt to hash

open (TESTTXT,"<$test_result_txt");
while (<TESTTXT>)
{
    print "$_";
    if (/Testcase_/d) # testcase....
    {
        $current_key=$_;
        chomp($current_key);
        print RESULT "\<$current_key\>$current_key: ";
    }
    else #* Note: “0 1 1” => “PASS”; “0 0 1” => “FAIL”; “1 0 1” => “SKIP”
    {
        if (/0\s1\s1\s/)
        {
            print "PASS\n";
            $xml_hash{$current_key}="PASS";
            print RESULT "PASS";
            print RESULT "\<\/$current_key\>\n";
        }
        elsif (/0\s0\s1\s/)
        {
            print "FAIL\n";
            $xml_hash{$current_key}="FAIL";
             print RESULT "FAIL";
            print RESULT "\<\/$current_key\>\n";
        }
        elsif (/1\s0\s1\s/)
        {
            print "SKIP\n";
            $xml_hash{$current_key}="SKIP";
             print RESULT "SKIP";
            print RESULT "\<\/$current_key\>\n";
        }
        else
        {
            print "INVAILD\n";
            $xml_hash{$current_key}="INVALID";
             print RESULT "INVALID, Please Check the test result code!";
            print RESULT "\<\/$current_key\>\n";
        }
        
    }
}



print "------------\n";
while((my $key,my $value)=each(%xml_hash)){
    print "$key  $value\n";
}



print RESULT "\<\/result\>","\n";
close RESULT;



