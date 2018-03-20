#!/usr/bin/perl -w

print "Please write your favourite five food, seperated each with a comma.\n";

chomp( $food=<STDIN>);

@array_food=split (',',$food);

print "Your favourite food is: @array_food \n";

print "Your first food is: ",$array_food[0], " , and your last food is ", $array_food[$#array_food], "\n";

print "you gave ", $#array_food + 1," food\n ";

print "Now, let's select the three food from the second to the fourth.\n";

@array_splice=splice (@array_food,2,3);

print "@array_splice\n";
