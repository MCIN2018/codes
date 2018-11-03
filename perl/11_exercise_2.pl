#!/usr/bin/perl -w

=print "hello world.\n";
##########
%hotels=("Pillowmint Lodge" => "5",
        "Buxton Suites" => "5",
        "The Middletonian" => "3",
        "Notchbelow" => "4",
        "Rancho El Cheapo" => "1",
        "Pile Inn" => "2",
    );
foreach $key(sort(keys %hotels))
{
    print "----$key,$hotels{$key}.\n";
}
use Data::Dumper;
my %h=(
"Alex"=>24,
"Sam"=>25,
"Bob"=>30,
"Andy"=>11,
"Wills"=>35,
"Mary"=>16,
"Helen"=>24
);
print(Dumper(\%h)); # output original hash
my @keys = sort { $h{$b} <=> $h{$a} } keys %h; #sort the hash table
for (@keys){print "$_ -> $h{$_}\n"};
=cut

%hotels=("Pillowmint Lodge" => "5",
"Buxton Suites" => "5",
"The Middletonian" => "3",
"Notchbelow" => "4",
"Rancho El Cheapo" => "1",
"Pile Inn" => "2",
);

my @keys = sort { $hotels{$b} <=> $hotels{$a} } keys %hotels; #sort the hash table with the values.

#print @keys;

#for (@keys){print "$_ -> $hotels{$_}\n"};


sub printstar
{
    my ($name,$star)=@_;
my $stars;
    #    switch($star)
    #  {
    #   case 1 {  $stars="*"}
    #   case 2 {  $stars="**"}
    #   case 3 {  $stars="***"}
    #    case 4 {  $stars="*****"}
    #    case 5 {  $stars="******"}
    #    else {$stars="Invaild"}
    #  }
    if ($star == 1)
     {
         $stars="*";
         printf "%-20s|%-20s|\n","$name","$stars";
     }
    if ($star == 2)
    {
        $stars="**";
       printf "%-20s|%-20s|\n","$name","$stars";
    }
    if ($star == 3)
    {
        $stars="***";
        printf "%-20s|%-20s|\n","$name","$stars";
    }
    if ($star == 4)
    {
        $stars="*****";
        printf "%-20s|%-20s|\n","$name","$stars";
    }
    if ($star == 5)
    {
        $stars="******";
        printf "%-20s|%-20s|\n","$name","$stars";
    }
}

printf "%-20s%-20s\n","Hotel","Category";
print "-" x 46 ,"\n";
for (@keys)
{
    &printstar($_,$hotels{$_});
}
print "-" x 46 ,"\n";

