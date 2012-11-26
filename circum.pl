#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

print "Input the radius of the circle: ";
my $rad =  <STDIN>;
chomp $rad;
if ($rad <= 0) {
    print 0, "\n";
} else {
    print $rad * 2 * 3.141592654, "\n"
}
