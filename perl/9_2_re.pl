#!/usr/bin/perl -w


=pod
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
=cut




$fruits="apples pears cherries bananas";

#($string1,$string2,$string3) =~
$fruits =~ /(.*)\s(.*)\s(.*)/;  # greedy mode , the first two strings apples pears are included in $1

print "-" x30,"\n";
print "$1\n";
print "$2\n";
print "$3\n";

$fruit="apples pears cherries plums";

#($string1,$string2,$string3) =~
$fruit =~ /(.*?)\s(.*?)\s(.*?)\s/;  # greedy mode is turn off. $1 includes only apples

print "-" x30,"\n";
print "$1\n";
print "$2\n";
print "$3\n";


#### Turn off capturing  ?:

print "#" x 50 ,"\n";

$_="Tom Savage and Dan Savage are brothers.\n";
print if /(?:T[a-z]*)/;
print "$1\n";


print "#" x 50 ,"\n";
print "positive look ahead.\n";
$string="I love chocolate cake and chocolate ice cream.";
$string =~ s/chocolate(?= ice)/vanilla/;
print "$string \n";



print "*" x 30 ,"\n";
#######
  while(<DATA>){
           #  s/([A-Z][a-z]+)\s([A-Z][A-Za-z]+)/$2, $1/; # to advoid the conflict of the names including uppercase letters in the middle are trimmed. Jonathan DeLoach-> De Jonathan
      # s/(\w+)\s(\w+)/$2,$1/;
    # Reverse first and last names
      #  print;

      #tr/a-z/A-Z/;print;
      # tr/0-9/*/c; print;
      tr /:/-/s;print;
}
__DATA__
1:::Steve Blenheim 101
2:::::Betty Boop  202
3:::::Igor Chevsky    303
4::::Norma Cord  404
5:Jon DeLoach 505
6::::::Karen Evich 606
