#!/usr/bin/perl
use 5.010;
use strict;
use warnings;


my @unsorted = qw/1 10 15 3 20 2 5 4 8 5 7 6 12 13 19/;
my @sorted   = mergesort( @unsorted );

say "\nUnsorted: @unsorted";
say "Sorted:   @sorted\n";

sub mergesort {
	my @array = @_;


	if ( !(scalar @array > 1) ) {
	    return @array;
	}

	# Split array into two arrays.
	my $size = scalar @array / 2;
	my @array_a = @array[0..$size - 1];
	my @array_b = @array[$size..$#array];

	# Recursively call mergesort() on our two lists.
	@array_a    = mergesort( @array_a );
	@array_b    = mergesort( @array_b );

	# Initialize the result array
	my @result = ();

	# Merge the two lists.
	while ( scalar @array_a && scalar @array_b ) {

		if ( $array_a[0] < $array_b[0] ) {
			push( @result, shift @array_a );
		} else {
			push( @result, shift @array_b );
		}
	}

	# Append remaining elements in a or b onto @list.
	push( @result, @array_a, @array_b );

	return @result;
}
