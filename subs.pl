#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

sub max 
{
    if ($_[0] > $_[1]) {
	$_[0];
    } else {
	$_[1];
    }
}

# another way to do max with private variables
sub max_priv {
    my($m, $n);       # new, private variables for this block
    ($m, $n) = @_;    # give names to the parameters
    if ($m > $n) { $m } else { $n }
}

# one more shortes way
sub max_priv_short {
    my($m, $n) = @_;    # initalize the variables and give names to the parameters
    if ($m > $n) { $m } else { $n }
}

# A max that takes any number of arguements
$maximum = &max(3, 5, 10, 4, 6);

sub max_best {
    my($max_so_far) = shift @_;  # the first one is the largest yet seen
    foreach (@_) {               # look at the remaining arguments
        if ($_ > $max_so_far) {  # could this one be bigger yet?
            $max_so_far = $_;
        }
    }
    $max_so_far;
}

my $answer = &max(5, 10); # 10
say $answer;

sub add
{
   my $numbera = shift;
   my $numberb = shift;

   my $result = $numbera + $numberb;
   print "The result was: $result\n";
}

&add(5, 10);
