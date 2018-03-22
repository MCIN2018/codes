#!/usr/bin/perl -w

#1: Print the average of three floating point numbers with a precision of two decimal places.

print "-------1: Print the average of three floating point numbers with a precision of two decimal places.\n";
$var1=12.345;
$var2=23.456;
$var3=34.567;

$var_result= ( $var1 + $var2 + $var3 ) /3 ;
printf " The average of var1-3 is %.2f.\n",$var_result;

#2: What are two other ways you could write $x = $x + 1;
print "\n----- 2: What are two other ways you could write \$x = \$x + 1;\n";

$x=4;
$x=$x + 1;
print $x,"\n";

$x=4;
$x++;
print $x,"\n";

$x=4;
++$x;
print $x,"\n";

#3; Write the following expression using a shortcut:$y = $y + 5;
# $y += 5;

$y=5;

print $y += 5 ,"\n";

# 4: Calculate the volume of a room that is 12.5 ft. long, 9.8 ft. wide and 10.5 ft. high.

$voulmn = 12.5 * 9.8 * 10.5 ;

print $voulmn,"\n";

# 5: Square the number 15 and print the result.

$squ=15;
$squ **= 2;

print $squ,"\n";

# %d,%f
$f_49=23.23;
$d_50=23.234;
printf " %.2f\n %d \n\n",$f_49,$d_50;

#6;Given the values of $a=10, $b=3, $c=7, and $d=20, print the value of $result:

$a=10;
$b=3;
$c=7;
$d=20;

$result = ( $a >= $b ) && ( $c < $d );
print "$result\n";  #---1

$result = ( $a >= $b ) and ( $c < $d );
print "$result\n";  # 1 and 1  :1

$result = ( $a < $b) || ( $c <= $d );
print "$result\n";   #  0 || 1  : 1

$result=( $a < $b) or ( $c <= $d );
print "$result"; # 0 or 1: 1

$result = $a % $b;
print "$result\n"; # 10  divided by 3 , the reminder is 1 .


#7:Write a program called convert that converts a Fahrenheit temperature to Celsius using the following formula.
#C = ( F - 32 ) / 1.8

print "Please input the Fahrenheit degree:\n";
chomp($fahrenheit=<STDIN>);

$celsius = ($fahrenheit - 32 ) / 1.8 ;

printf "The corresponding Celsius is: %.1f\n",$celsius;


#8:
=pod
 Create an array of five sayings:
 "An apple a day keeps the doctor away"
 "Procrastination is the thief of time"
 "The early bird catches the worm"
 "Handsome is as handsome does"
 "Too many cooks spoil the broth"
 Each time you run your script, a random saying will be printed. Hint: the index of the array will hold a random number.
=cut

@a_98=("An apple a day keeps the doctor away",
"Procrastination is the thief of time",
"The early bird catches the worm",
"Handsome is as handsome does",
"Too many cooks spoil the broth");


print "\n\n\n************\n 1:@a_98[0]\n 2:@a_98[1]\n 3:@a_98[2] \n 4:@a_98[3] \n 5:@a_98[4]\n\n*************\n\n\n\n";

$r_num=5; # to generate the random for the five elements of the array.

$num_array = int rand($r_num) ;
print "The saying for this time is  No.", $num_array + 1 , " and it is:\n";
print @a_98[$num_array],"\n";


# 9: N/A
=pod
 The following formula is used to calculate the fixed monthly payment required to fully amoritize a loan over a term of months at a monthly interest rate. Write a Perl expression to represent the following formula where: P = principal amount borrowed, r = periodic interest rate (annual interest rate divided by 12), n = total number of payments (for a 30-year loan with monthly payments, n = 30 years x 12 months = 360), and A = periodic payment.
=cut






