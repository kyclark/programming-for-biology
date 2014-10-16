#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

my @seqs = (
    'ATGCCCGGCCCGGC','GCGTGCTAGCAATACGATAAACCGG', 'ATATATATCGAT','ATGGGCCC'
);

my $i;
for my $seq (@seqs) {
    my @gc      = grep { $_ =~ /[GC]/i } split '', $seq;
    my $perc_gc = (scalar @gc / length $seq) * 100;

    printf "%4s: GC content = %.2d%%\n", ++$i, $perc_gc;
}

my $seq = 'GCGTGCTAGCAATACGATAAACCGG';
my $gc  = 0;
for ( my $i = 0; $i < length $seq; $i++ ) {
    my $char = substr($seq, $i, 1);
    if (uc $char eq 'G' || uc $char eq 'C') {
        $gc++;
    }
}

my $perc_gc = ($gc / length $seq) * 100;
printf "%4s: GC content = %.2d%%\n", ++$i, $perc_gc;
