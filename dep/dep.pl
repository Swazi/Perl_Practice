#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# Straight line depreciation
# Order of inputs: Item cost, how many years, useful life of item, salvage value
# example: &straight_line(500, 2, 4, 100);
sub straight_line {
    my $acc_dep = 0;
    my $bv = $_[0];
    my $dep = ($_[0]- $_[3]) / ($_[2] * 1.0);
    $acc_dep += $dep;
    $bv -= $dep;
    foreach my $i (1..$_[1]) {
        say "End of year $i";
	say "\tDeprecation $dep";
	say "\tAccumulated Depreciation $acc_dep";
	say "\tBook Value $bv";
        $acc_dep += $dep;
	$bv -= $dep;
    }
}

# Units of production method of depreciation
# Order of inputs: Item cost, salvage value, total life of item in units of production
# units of production used during the period
# example: &units_of_production(1000, 200, 50000, 10000);
sub units_of_production {
    my $dep = ($_[0] - $_[1]) * ((1.0 * $_[3])/ $_[2]);
    say "\nThe deprecation expense is $dep\n";
    # Determine if the used wants to calculate depreciation for another period
    say "If you would like to compute another period please
please enter the units used otherwise enter 0\n";
    my $again = <STDIN>;
    chomp $again;
    if ($again > 0) {
	&units_of_production($_[0], $_[1], $_[2], $again);
    }
}

# Double declining method of depreciation
# Order of inputs: Item cost, useful life, years wanted, salvage value of item
# Example: &double_decling(1000, 5, 2, 100);
sub double_declining {
    my $acc_dep = 0;
    my $perc = (1.0 / $_[1] * 2);
    my $bv = $_[0];
    my $dep = $bv * $perc;
    $acc_dep += $dep;
    $bv -= $dep;
    foreach my $i (1..$_[2]) {
        say "End of year $i";
	say "\tDeprecation $dep";
	say "\tAccumulated Depreciation $acc_dep";
	say "\tBook Value $bv";
	if ($i == $_[1]) {
	    $dep = $bv - $_[3];
	    $bv = $_[3];
	    $acc_dep += $dep;
	} else {
	    $dep = $bv * $perc;
	    $acc_dep += $dep;
	    $bv -= $dep;
	}
    }
}

# The main subroutine
sub main {
    # Determine which type of depreciation is wanted
    say "Which type of depreciation would you like to use?";
    say "For straight line enter 1";
    say "For double declining enter 2";
    say "For units of production enter 3\n";

    my $type = <STDIN>;
    chomp $type;

    # If straight line  determine the cost, years, useful life, salvage value
    # from the user
    if ($type == 1) {
	print "\nWhat is the cost of the item? ";
	my $cost = <STDIN>;
	chomp $cost;
	print "How many years of depreciation do you want? ";
	my $years = <STDIN>;
	chomp $years;
	print "What is the useful life of the item? ";
	my $useful = <STDIN>;
	chomp $useful;
	print "What is the salvage value of the item? ";
	my $salvage = <STDIN>;
	chomp $salvage;
	print &straight_line($cost, $years, $useful, $salvage);	    
    # If units of production determine the cost, salvage value, useful life, units used
    } elsif ($type == 3) {
	print "\nWhat is the cost of the item? ";
	my $cost = <STDIN>;
	chomp $cost;
	print "What is the salvage value of the item? ";
	my $salvage = <STDIN>;
	chomp $salvage;
	print "What is the total useful life of the item in terms of units of production? ";
	my $total = <STDIN>;
	chomp $total;
	print "How many units of production were used during the period? ";
	my $used = <STDIN>;
	chomp $used;
	print &units_of_production($cost, $salvage, $total, $used);
    # If double decling determine the cost, years, useful life, salvage value
    } elsif ($type == 2) {
	print "\nWhat is the cost of the item? ";
	my $cost = <STDIN>;
	chomp $cost;
	print "How many years of depreciation do you want? ";
	my $years = <STDIN>;
	chomp $years;
	print "What is the useful life of the item? ";
	my $useful = <STDIN>;
	chomp $useful;
	print "What is the salvage value of the item? ";
	my $salvage = <STDIN>;
	chomp $salvage;
	print &double_declining($cost, $useful, $years, $salvage);
	
    }

    # Determine if the use wants to calculate another depreciation
    print "\nWould you like to calculate another depreciation? (Y/N) ";
    my $again = <STDIN>;
    chomp $again;
    
    if ($again eq "Y" or $again eq "y") {
	print "\n";
	&main;	    
    }
}

# Run the main method
&main();
