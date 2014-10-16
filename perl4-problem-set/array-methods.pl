#!/usr/bin/env perl

use strict;
use warnings;

my @numbers = (101,2,15,22,95,33,2,27,72,15,52);

print join(', ', @numbers), "\n";

my $last = pop @numbers;

print "last ($last)\n";

print join(', ', @numbers), "\n";

my $first = shift @numbers;

print "first ($first)\n";

print join(', ', @numbers), "\n";

print "Pushing 12\n";

push @numbers, 12;

print join(', ', @numbers), "\n";
