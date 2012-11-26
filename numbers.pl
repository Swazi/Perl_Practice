use strict;
use warnings;
use 5.010;

# open a file, read the numbers and sum them up
my $filename = 'numbers.txt';
open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

my $sum = 0;

while (my $row = <$fh>) {
    chomp $row;
    $sum += $row;
}

say $sum;
S
