#!/usr/bin/perl -w

print "greedy qualifier. \n";

$string="I got a cup of sugar and two cups of flour from the cupboard.";

$string =~ s/cup.*/tablespoon/;
print "$string \n";


$string="I got a cup of sugar and two cups of flour from the cupboard.";
$string =~ s/cup.*?/tablespoon/;
print "$string \n";

$_="Today is history.\nTomorrow will never be here.\n";

print if /^Tomorrow/m;



while(<DATA>){
print if /\bJon/;
}
__DATA__
Steve Blenheim 1.10
Betty Boop .5
Igor Chevsky 555.100
Norma CJonord 4.01
Jonathan DeLoach .501
Karen Evich 601
