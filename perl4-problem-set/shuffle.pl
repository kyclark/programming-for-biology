#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

my $seq = 'GCGTGCTAGCAATACGATAAACCGG';
my @arr = split //, $seq;

print "$seq\n";

my $len = length $seq;
for my $i (0..$len) {
    my $rand1 = int(rand($len - 1));
    my $rand2 = int(rand($len - 1));

    ($arr[$rand1], $arr[$rand2]) = ($arr[$rand2], $arr[$rand1]); 
}

print join('', @arr), "\n";
