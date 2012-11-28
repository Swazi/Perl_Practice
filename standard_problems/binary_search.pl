#!/usr/bin/perl
#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# A binary search algorithm for arrays of strings 
# Returns the index of the target or the position the
# target could be inserted into the array keeping the 
# array sorted

sub bin_search_string {
    my ($array, $target) = @_;

    my ( $min, $max ) = ( 0, scalar(@$array) );

    while ( $min < $max ) {
	use integer;
	my $current = ($min+$max)/2;
	if ($array->[$current] lt $target) {
	    $min = $current + 1;
	} else {
	    $max = $current;
	}
    }

    return $min;
}

my $letter = "J";

my @alphabet = qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);

print "Index of $letter in the alphabet is: ", bin_search_string( \@alphabet, $letter ), "\n";
