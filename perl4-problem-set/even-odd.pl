#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

my @numbers = (0..10);

#for my $n (@numbers) {
#    printf "%s is %s\n", $n, ($n %2 == 0) ? 'EVEN' : 'ODD';
#}
#
#for my $n (@numbers) {
#    my $is_even = $n % 2 ==0;
#
#    printf "%s is %s\n", $n, $is_even ? 'EVEN' : 'ODD';
#
#    if ($is_even) {
#        print "$n is EVEN\n";
#    }
#    else {
#        print "$n is ODD\n";
#    }
#}
my @numbers = (101,2,15,22,95,33,2,27,72,15,52);
my @even = grep { $_ % 2 == 0 } @numbers;
my @odd  = grep { $_ % 2 != 0 } @numbers;
my @odd  = grep { $_ % 2 == 1 } @numbers;
say "Even numbers = ", join(', ', @even);
say "Odd numbers  = ", join(', ', @odd);

print "All done.\n";
