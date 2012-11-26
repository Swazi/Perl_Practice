#!/usr/bin/perl

# Functions in Perl are called subroutines. Like bash, you don't define the 
# parameters in the function declaration. We'll see how to access the parameters
# when we look at the Fibonacci subroutine below.

sub main {

# Again, the ubiquitous printf function. Apparently a staple of programming
printf "\nHow many numbers of the sequence would you like?\n";

# Once again, we don't need to declare variables before using them.
# Perl's scalar variables, prefaced with $, can be either strings or numbers
# We use <STDIN> to get the data from stdin here

$n = <STDIN>;

# As in PHP, we need to remove the newline at the end

chomp $n;

&fibonacci($n);

exit 0;
}

# Except for the first line declaring the subroutine, and the different way that
# parameters passed to the subroutine are passed, this is identical to the PHP version

sub fibonacci {
  $a = 0;
  $b = 1;

  # So now we see the parameter being used here. For clarity, I have written the for
  # loop using $n like the other examples. To set $n using the first parameter passed
  # to the subroutine, I access the scalar variable $_[0], which is the first element
  # of the parameter array @_

  $n = $_[0];

  for ($i=0;$i<$n;$i++){
      printf "%d\n", $a;
    $sum = $a + $b;
    $a = $b;
    $b = $sum;
  }
}

&main;





