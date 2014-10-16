#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

my $file = 'does-not-exist.txt';

open IN, '<',  or die "Cannot open '$file' for reading: $!\n";

open IN, '<', 'does-not-exist.txt';

for my $file (@files) {
    open IN, '<', $file;
    open my $IN, '<', $file;
}
