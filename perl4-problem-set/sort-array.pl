#!/usr/bin/env perl

use strict;
use warnings;

my @numbers = (101,2,15,22,95,33,2,27,72,15,52);

print join(', ', @numbers), "\n";

my @sorted = sort { $a <=> $b } @numbers;

print join(', ', @sorted), "\n";

my @sorted2 = sort { $b <=> $a } @numbers;

print join(', ', @sorted2), "\n";

my @sorted3 = reverse sort { $a <=> $b } @numbers;

print join(', ', @sorted3), "\n";

__END__
#s   As
==   eq
>    gt
<    lt

