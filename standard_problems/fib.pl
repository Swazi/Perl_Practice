#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

sub main {


say "\nHow many numbers of the sequence would you like? \n";

# We use <STDIN> to get the data from stdin here

my $n = <STDIN>;

# Remove the newline at the end

chomp $n;

&fibonacci($n);

exit 0;
}

# The fibonacci sub
sub fibonacci {
  my $a = 0;
  my $b = 1;

  my $n = shift @_;

  say "\nThe first $n numbers of the fibonacci sequence are \n";

  for (my $i=0;$i<$n;$i++){
      printf "%d\n", $a;
    my $sum = $a + $b;
    $a = $b;
    $b = $sum;
  }
}

&main;





