#! /usr/bin/perl -w

#Example 14.1.
$name="Susan";
my $birthday=1942;

package nosy;
print "Hello $main::name.\n";
print "You were born in $main::birthday.\n";

#To keep variables private, the my function is used. The my variables exist only within the innermost enclosing block, subroutine, eval, or file. The my variables cannot be accessed from another package by using the double colon (or single apostrophe), because my variables are not related to any package; they are not stored in the symbol table of the package in which they are created.


# The object is the thing (usually a hash) that was blessed into the class (package).
#my $ref  = { Owner => "Tom",  Price => 250000 };    # This is the object
#bless( $ref, Class);   # The object is blessed into the package named Class
#return $ref;           # A reference to the object is returned
