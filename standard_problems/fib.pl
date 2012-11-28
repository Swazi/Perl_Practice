#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

sub main {


say "\nHow many numbers of the sequence would you like?\n";

# We use <STDIN> to get the data from stdin here

my $n = <STDIN>;

# Remove the newline at the end

chomp $n;

&fibonacci($n);

exit 0;
}

# The fibonacci sub
sub fibonacci {
  $a = 0;
  $b = 1;

  $n = $_[0];

  for ($i=0;$i<$n;$i++){
      printf "%d\n", $a;
    $sum = $a + $b;
    $a = $b;
    $b = $sum;
  }
}

&main;





