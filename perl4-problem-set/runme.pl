#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use autodie;

for ( my $i = 0 ; $i < 10 ; $i++ ) {
    if ( $i == 2 ) {
        print "\$i = $i\n";
    }
}
