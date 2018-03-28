#!/usr/bin/perl -w

foreach $hour( 1 .. 24 )
{
    if ($hour > 0 and $hour < 12)
    {
        print "Good morning.\n";
    }
    elsif ($hour == 12 )
    {
        print "Good Lunch.\n";
    }
    elsif ($hour > 12 and $hour < 17 )
    {
        print "Good Evening.\n";
    }
    else
    {
        print "Good night.\n";
    }
}

######################
 $str="hello";
 @numbers = (1, 3, 5, 7, 9);
print "The scalar \$str is initially $str.\n";
print "The array \@numbers is initially @numbers.\n";

foreach $str( @numbers )
{
    $str += 5;
    print "$str\n";
}
print "Out of the loop--\$str is $str.\n";
print "Out of the loop--The array \@numbers is now @numbers.\n";

################
@color = (grey,blue,red,yellow);
foreach (@color)
{
    print "$_\n";
    $_="SILLY";
}
print "@color \n";

###### label ,redo
ATTEMP:
{
    print "\Are you a great person?\n";
    chomp($answer=<STDIN>);
    unless ( $answer eq "yes" )
    {
        redo ATTEMP;
    }
}

####。 No 1: while (1),next,last: to keep the loop and leave the loop
while (1)
{
    print "Input your grade:\n";
    chomp($grade=<STDIN>);
    if ($grade < 0 || $grade >100)
    {
        print "Immpossible! input again!\n";
        next; # back to the top of the loop
    
    }
    if ( $grade > 90 )
    {
        print "A\n";
    }
    elsif ( $grade >60 && $grade <90 )
    {
        print "\B-C";
    }
    else
    {
        print "Failed.\n";
    }
    
    print "Do you want to Input another grade?\n";
    chomp($answer=<STDIN>);
    if ($answer ne "yes" ) # won't stop until you want to leave, that is, last will leave the loop
    {
        last;
    }
}

###  NO 2: redo + last , to keep the loop and leave the loop . the same with the up method

ATT:
{
    print "What is the course number?\n";
    chomp($number=<STDIN>);
    print "What is the course name?\n";
    chomp($course=<STDIN>);
    
    $dept{$number}=$course;
    print "Ready to quite? \n";
    chomp($answer = <STDIN>);
    $answer=lc($answer);
    if ($answer eq "yes" || $answer eq "y" )
    {
        last;
    }
    redo ATT;
}

print  "Program continues here.\n";


###  example 7.21

for ( $rows=5; $rows>=1; $rows-- )
{
    for ($column=1;$column<=$rows; $column++)
    {
        print "*";
    }
    print "\n";
}


=pod
#### switch.pm
use Switch;

print "What is your favorite color? ";
chomp($color=<STDIN>);

switch("$color")
{
    case "red"
    {
        print "Red is hot mama\n";
    }
    case "yellow"
    {
        print "Yellow is cool\n";
    }
    case "green"
    {
        print " my valley is green\n";
    }
    else
    {
        "$color is not on the list.\n";
    }
}
print "Execution continue here...\n";
=cut






