use strict;
use warnings;
use 5.010;

# Declare an array

my @names;

# Decalare and assign values

@names = ("Foo", "Bar", "Baz");

# Debug an array

use Data::Dumper qw(Dumper);

say Dumper \@names;

# For each loop

foreach my $n (@names) {
    say $n;
}

# Accessing elements of an array

say $names[0];

# Indexing an array;

say $#names; # will print 2 since the larges index is 2
b

# Size of an array

say scalar @names;

# For each loop using indexs

foreach my $i (0 .. $#names) {
    say "$i $names[$i]";
}

# Mutating arrays
push @names, 'Moo';

say Dumper \@names;

my $last_value = pop @names;
say "Last: $last_value";
say Dumper \@names;

shift @names; # will remove the first value and shift the rest over
