#!/usr/bin/perl
use 5.010;
use strict;
use warnings;
use List::Util qw(shuffle);

sub quicksort (\@) {_quicksort($_[0], 0, $#{$_[0]})}

sub _quicksort {
    my ($array, $min, $max) = @_;
    if ($min < $max) {
	my $middle = splitup($array, $min, $max);
	_quicksort($array, $min, $middle - 1);
	_quicksort($array, $middle + 1, $max  );
    }
}

sub splitup {
    my ($array, $min, $max) = @_;
    my $x = $$array[$max];
    my $y = $min - 1;
    for my $z ($min..$max - 1) {
	if ($$array[$z] <= $x) {
	    $y++;
	    @$array[$y, $z] = @$array[$z, $y];	    
	}
    }
    $y++;
    @$array[$y, $max] = @$array[$max, $y];
    return $y;
}

my @array = (1..20);
my @unsorted = shuffle @array;
say "@unsorted";
quicksort @unsorted;
say "@unsorted"; 
