#!/usr/bin/env perl

use strict;
use warnings;

if (!@ARGV) {
    die "Please provide arguments.\n";
}

if (scalar @ARGV != 2) {
    die "Please provide exactly 2 arguments.\n";
}

my $arg = shift;

print "The argument is '$arg'\n";
