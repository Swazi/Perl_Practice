use 5.010;
use strict;
use warnings;

my $s1 = '100';
my $s2 = '$100';

print "\Q\Qasd\E\E\n";

print "$s1\n";
print "$s2\n";
print "\$s1\n";
print "\Q$s2\E\n";
print "\Q\Q$s2\E\E\n";
