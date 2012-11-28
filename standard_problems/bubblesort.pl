#!/usr/bin/perl
use 5.010;
use strict;
use warnings;
use List::Util qw(shuffle);



sub bubblesort {
    my $array = shift;
    my $x;         # The starting index
    my $y;         # The running index  
    for ($x = $#$array; $x; $x--) {
        for ($y = 1; $y <= $x; $y++) {
            # Swap if necessary
            if (@$array[$y - 1] > @$array[$y]) {
                @$array[$y, $y - 1] = @$array[$y - 1, $y];
            }
        }
    }
    say "Sorted ", scalar @$array," elements using bubblesort.\n";
}

# An array ranging 1 to 20
my @array = (1..20);

# Randomize the array
my @unsorted = shuffle @array;
say "@unsorted\n";

# Sort it using bubble sort
bubblesort \@unsorted;
say "@unsorted";

