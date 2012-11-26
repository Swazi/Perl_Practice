 #!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# A sub that returns the total of a given array of numbers
sub total {
    my $sum;
    foreach (@_) {
	$sum += $_;
    }
     return $sum;
}


say &total(1..1000);

# return the average of an array of numbers
sub average {
  if (@_ == 0) { return }
  my $count = @_;
  my $sum = total(@_);               # from earlier exercise
  $sum/$count;
}

# return a list of all the numbers larger than the average
# in a list of numbers
sub above_average {
  my $average = average(@_);
  my @list;
  foreach my $element (@_) {
    if ($element > $average) {
      push @list, $element;
    }
  }
  @list;
}

# Greet person telling them the last person it greeted
sub greet {
    state $last_person;

    my $name = shift;

    print "Hi $name! ";

    if( defined $last_person ) {
        print "$last_person is also here!\n";
    }
    else {
        print "You are the first one here!\n";
    }

    $last_person = $name;
}

