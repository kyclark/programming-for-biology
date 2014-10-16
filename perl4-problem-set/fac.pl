#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

my $n      = shift;
my $result = 1;
for my $i (1..$n) {
    $result *= $i;
}

print "$n! = $result\n";
