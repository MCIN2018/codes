#!/usr/bin/perl
###### to generate text_result xml, by Christine MEI.

use strict;
use warnings;

my $test_result_xml; # the aimed XML file in which the final test result will be saved.
my $test_result_txt; # the existing textz_result.txt, based on which the aimed XML file will be generated.
my $current_key;     # to keep the current key for saving the test_result code.

$test_result_xml="/tmp/test_result.xml";
$test_result_txt="/tmp/test_result.txt";

# to generate test_result.xml
open (RESULT,">$test_result_xml")|| die "Can't open text_result.xml: $!\n";
print RESULT "\<?xml version=\"1.0\" encoding=\"GBK\"?\>","\n";
print RESULT "\<result\>","\n";


open (TESTTXT,"<$test_result_txt");
while (<TESTTXT>)
{
    if (/Testcase_/id) # Testcase....
    {
        $current_key=$_;
        chomp($current_key);
        print RESULT "\<$current_key\>$current_key: ";
    }
    else #* Note: “0 1 1” => “PASS”; “0 0 1” => “FAIL”; “1 0 1” => “SKIP”
    {
        if (/0\s1\s1\s/)
        {
            print RESULT "PASS";
            print RESULT "\<\/$current_key\>\n";
        }
        elsif (/0\s0\s1\s/)
        {
             print RESULT "FAIL";
            print RESULT "\<\/$current_key\>\n";
        }
        elsif (/1\s0\s1\s/)
        {
            print RESULT "SKIP";
            print RESULT "\<\/$current_key\>\n";
        }
        else
        {
            print RESULT "INVALID, Please Check the test result code!";
            print RESULT "\<\/$current_key\>\n";
        }
    }
}

print RESULT "\<\/result\>","\n";
close RESULT;



