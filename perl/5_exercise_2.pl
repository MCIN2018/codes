#!/usr/bin/perl -w

@names=qw(Nick Susan Chet Dolly Bill);
print "array names is : @names \n";
#Replace Susan and Chet with Ellie, Beatrice, and Charles.

@array_replace=splice(@names,1,2,"Ellie","Beatrice","Charles");

print "array names (after splice) is now: @names \n";
#array names (after splice) is now: Nick Ellie Beatrice Charles Dolly Bill

#Remove Bill from the array.

pop @names;
print "array names (after pop   ) is now: @names \n";

#Add Lewis and Izzy to the end of the array.
push (@names,"Lewis","Izzy");
print "array names (after push  ) is now: @names \n";

#Remove Nick from the beginning of the array.

shift @names;
print "array names (after shift ) is now: @names \n";

#Reverse the array.
@array_reverse=reverse @names;
print "array names (after reverse) is now: @array_reverse \n";

#Add Archie to the beginning of the array.
unshift  (@array_reverse,"Archie");
print "array names (after unshift ) is now: @array_reverse \n";

#Sort the array.
@array_sort=sort @array_reverse;
print "array    (after sort ) is now: @array_sort \n";
#array    (after sort ) is now: Archie Beatrice Charles Dolly Ellie Izzy Lewis

#Remove Chet and Charles and replace them with Christian and Daniel.
splice(@array_sort,2,2,"Christian","Daniel");
print "array    (after splice ) is now: @array_sort \n";








