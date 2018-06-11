#! /usr/bin/perl -w

# to print different elements between two given arrays.

my @array1=(20,17,14,1,2,3,4,5,6,7,8,9);     # the orignal array 1
my @array2=(5,7,9,11,1,3,13,15,17);          # the orignal array 2
my @combined;
my %help;

print "The first array is @array1 \n";
print "The second array is @array2 \n";

@combined=(@array1,@array2);

foreach $value(@combined)
{
  if (!(exists $help{$value}))
    {
        $help{$value}=1;
    }
    else
    {
        $help{$value}+=1;
    }
}

print "\nThe different elements in the two arrays are:\n ";
foreach $key (sort(keys %help))
{
 if($help{$key}==1)
  {
        print $key , " ";
  }
}
print "\n";



=pod
 #my @unique_array;
 #my %assistance;
# put the elements into hash
$element_count=0;
while ( $element_count<@combined)
{
    print "The elment $element_count is :\n";
    print $combined[$element_count],"\n";
    #$help{$element_count}=$combined[$element_count];
    #print "Hsss is: $help{$element_count} \n";
    #if（!exists $help{$element_count}）
    $element_count++;
}






#%help=@combined;

print "hash is \n";
foreach $value(values(%help))
{
    print $value;
}
print "\n";


=pod
foreach my $value (@combined)
{
    if (exists($assistance{$value}))
    {
        next;
    }
    else
    {
        $assistance{ $value } = 1;
        push( @unique_array, $value );
    }
}

print "The different elements in the two arrays are:\n ";
print "@unique_array \n";
=cut


