use 5.010;
use strict;
use warnings;

say "This program will sum two numbers";
say "Please type the first number";
my $first = <STDIN>;
say "Please type the second number";
my $second = <STDIN>;
chomp $first;
chomp $second;
my $sum = $first + $second;
say "The sum of $first and $second is $sum";
