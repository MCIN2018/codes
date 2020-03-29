#! /usr/bin/perl

#Example 14.1.
$name="Susan";
my $birthday=1942;

package nosy;
print "Hello $main::name.\n";
print "You were born in $main::birthday?\n";


package House1;          # Package declaration

my $ref = { "Owner"=>"Tom", #Anonymous hash; data for the package
    "Price"=>"25000", # Properties/attributes
};

print "The value of \$ref  before blessed is: $ref.\n";
print "The ref function returns （Curious）:",ref($ref), ".\n";
bless($ref, House1);

# The bless function creates the object. The hash referenced by
# $ref  is the object. It is blessed into
# the package; i.e., an internal pointer is created to keep track
# of the package where it belongs.

print "The bless function tags the hash with its package name.\n";
print "The value of \$ref is: $ref.\n";
print "The ref function returns the class (package) name:",ref($ref), ".\n";


#### to invoke House.pm
print "\n-------- To invoke House.pm,Figure 14.3---\n";
use House_14_3;
$obj1=House_14_3->new();
$obj1->setdata();
$obj1->getdata();



##### Example 14.4

print "\n-------- Example 14.4---\n";
=pod
use House;
my $houseref=House->new();
print "\$Houseref is in main belongs to class ",ref($houseref),"\n";
$houseref->set_owner("Christine Mei");
$houseref->display_owner;
=cut

#### Example 14.6
print "\n-------- Example 14.6---\n";
=pod
use House;
my $house1=House->new("Robin",80000);
my $house2=House->new("Christine",2);
$house1->display_object;
$house2->display_object;
print "\$house1:$house1;\$house2:$house2\n";
=cut

print "\n-------- Example 14.6 Passing parameters to instance methods---\n";

use House;
my $house=House->new("Ken",50000,"Sdney D");
$house->display("Owner","Style");

