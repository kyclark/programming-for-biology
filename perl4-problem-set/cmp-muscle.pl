#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;
use Data::Dumper;
use List::MoreUtils 'uniq';

my $file = shift or die 'No file';

open my $fh, '<', $file;

my %seqs;
my $current_seq = '';

while (my $line = <$fh>) {
    chomp $line;

    if ($line =~ /^>(.+)/) { # seq header
        $current_seq = $1;
        $seqs{ $current_seq } = '';
    }
    else {
        $seqs{ $current_seq } .= $line;
    }
}
close $fh;

my @ids  = keys %seqs;
my $id1  = $ids[0];
my $seq1 = $seqs{ $id1 };
my $num_diffs = 0;
print "ids = ", scalar @ids, "\n";

for ( my $i = 0; $i < length $seq1; $i++ ) {
    my @bases = map { substr($seqs{$_}, $i, 1) } @ids;

    if (scalar uniq(@bases) != 1) {
        $num_diffs++;
        printf STDERR "%s => %s\n", $i, join('/', @bases);
    }
}

printf "Found %s change%s.\n", $num_diffs, $num_diffs == 1 ? '' : 's';
