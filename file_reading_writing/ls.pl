#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

open(LS, "ls -l|") or die "$!\n";
while (<LS>) {
    print $_;
}
