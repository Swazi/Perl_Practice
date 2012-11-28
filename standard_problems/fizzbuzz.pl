#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

my $i;

for ($i = 1; $i <= 100; $i++)
{
    if ($i % 15 == 0) {
        print "FizzBuzz"
    }
    elsif ($i % 3 == 0) {
        print "Fizz";
    }
    elsif ($i % 5 == 0) {
        print "Buzz";
    }
    else {
        print $i;
    }

    print "\n";
}
