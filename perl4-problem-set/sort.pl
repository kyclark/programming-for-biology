#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

my @seqs = ( 
    'ATGCCCGGCCCGGC', 'GCGTGCTAGCAATACGATAAACCGG', 'ATATATATCGAT', 'ATGGGCCC' 
);

print "seqs   = ", join(', ', @seqs), "\n";

my @sorted = sort @seqs;

print "sorted = ", join(', ', @sorted), "\n";
