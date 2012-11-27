use strict;
use warnings;
use 5.010;
use autodie;

my $filename = 'data.txt';
# If it is not necessary to die if the file is not found
# use an if(open) because open will evaluate to true or false
# you can also use autodie
open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
    chomp $row;
    say $row;
}
