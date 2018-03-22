#!/usr/bin/perl -w

$name="Dan";
$line="*";
$var=0;

$var += 3;
print "\$var += 3 is $var \n";

$var -= 1;
print "\$var -=  1 is $var \n";

$name .="ny";
print "the full of \$name is  $name \n";

$line x= 10;
print "$line\n";

printf "\$var is %.2f\n",$var=4.2 + 2.3 ;


print "\n****************\n";
$num1=50;
$num2=100;
$num3=0;

print $num1 && $num2,"\n";
print $num1 && $num3,"\n";
print $num3 && $num1,"\n";
print $num2 && $num1,"\n";
=pod
 output:
 100
 0
 0
 50
=cut

print "\n";
print $num1 || $num2,"\n";
print $num1 || $num3,"\n";
print $num3 || $num1,"\n";
print $num2 || $num1,"\n";
=pod
 output
50
50
50
100
=cut


print "\nOutput using the word operators.\n\n";
print "\n$num1 and $num2: ",($num1 and $num2), "\n";
print "\n$num1 or $num3: ", ($num1 or $num3), "\n";
print "\n$num1 xor $num3: ",($num1 xor $num3), "\n";
print "\nnot $num3: ", not $num3;
print "\n";

=pod
 50 and 100: 100
 50 or 0: 50
 50 xor 0: 1
 not 0: 1
=cut
=pod
while (1) {
    $mask = 0x80000000;      # 32-bit machine
    printf("Enter an unsigned integer: ");
    chomp($num=<STDIN>);
    printf("Binary of %x hex is: ", $num);
    for ($j = 0; $j < 32; $j++) {
         $bit = ($mask & $num) ? 1 : 0;
         printf("%d", $bit);
         if ($j == 15)
         {
          printf("--");
        }
         $mask /=2;              # $mask >>= 1; not portable
    }
    printf("\n");
}
=cut

print "***** conditional operators*****\n";
print "input your age:\n";
chomp($age=<STDIN>);
$price = ($age > 60) ? 0 : 5.5;
printf "The price is  %.2f \n", $price;

print "input your grade:\n";
chomp($grade = <STDIN>);
print $grade > 60 ? "passed\n" :"Failed \n";

print "----- range operator----\n";

print 0 .. 10,"\n";

@alpha=('A' .. 'Z');
print "@alpha";
print "\n";
@a=('a' .. 'z','A' .. 'Z');
print  "@a\n";
@n=( -5 .. 20 );
print "@n\n";

print "-----string  functions----\n ";
 $x="pop";
 $y="corn";
 $z="*";

#**********
print $z x 10,"\n";
#popcorn
print $x . $y,"\n";
#**********
print $z x 10,"\n";
#popcorn popcorn popcorn popcorn popcorn
print (($x . $y . " " ) x 5 );
print "\n";
#POPCORN!
print uc($x . $y),"!\n";


print "\n **** string operations- ", `date "+%Y%m%d"`,"**************** \n";

#2   New
#3   10
#4   Year
#6   Fred, Happy New Year
#8   Ethelred, Happy New Year
#9   Ethelred, Happy New Year to you!

$line="Happy New Year";

print "substr(\$line,6,3):  ",substr($line,6,3),"\n";
print index($line,"Year"),"\n";
print substr($line,index($line,"Year")),"\n";

substr($line,0,0)="Fred,";
print "$line\n";

substr($line,0,1)="Ethel";
print "$line\n";

substr($line,-1,1)="r to you!";# -1是最后位置。替换最后一个字符。
print "$line\n";

#12  18
$string="I'll eat a tomato tomorrow.\n";
print rindex($string,"tom"),"\n";


print "\n****** arthmethic functions ******\n ";

print int(4.34233) ,"\n";


print "\n****** random data ******\n ";

$num=10;

while ($num)
{
    $rand_164=int(rand($num)) + 1;
    print "The rand nuber is $rand_164 \n";
    $rand_167=rand + 1;
    print "The rand number of nake rand is $rand_167 \n";
    sleep 3;
    $num--;
}













