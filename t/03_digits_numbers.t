#!/usr/bin/perl

use Test::More tests => 2901;

use strict;
use warnings;
no warnings 'syntax';

use lib 't';
use Data;

our ($VERSION) = q $Revision: 1.2 $ =~ /[\d.]+/g;

BEGIN {
    use_ok ('Regexp::CharClasses')
};

our @data;


foreach my $i (0 .. 9) {
    my $pat     = "\\p{IsDigit$i}";
    foreach my $c (@{$data [$i]}) {
        my $h       = hex $c;
        ok chr ($h) =~ /^$pat$/, "chr (0x$c) =~ /^$pat\$/";
    }
    foreach my $j (0 .. 9) {
        next if $i == $j;
        my $pat     = "\\P{IsDigit$i}";
        foreach my $c (@{$data [$j]}) {
            my $h       = hex $c;
            ok chr ($h) =~ /^$pat$/, "chr (0x$c) =~ /^$pat\$/";
        }
    }
}


__END__

 $Log: 03_digits_numbers.t,v $
 Revision 1.2  2008/01/12 00:21:33  abigail
 - Added $VERSION
 - Added "no warnings 'syntax'"

