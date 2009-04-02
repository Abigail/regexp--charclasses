#!/usr/bin/perl

use constant RUNS    => 1000;

use Test::More tests => 1 + RUNS;

use strict;
use warnings;
no warnings 'syntax';

use List::Util 'shuffle';
use lib 't';
use Data;

our ($VERSION) = q $Revision: 1.2 $ =~ /[\d.]+/g;

BEGIN {
    use_ok ('Regexp::CharClasses')
};

our @data;

foreach my $r (1 .. RUNS) {
    my $str = "";
    my $pat = "";
    my @i = shuffle 0 .. 9;
    foreach my $i (@i) {
        $str .= chr hex $data [$i] [rand @{$data [$i]}];
      again:
        my $alt = 0 + int rand 9;
        goto again if $alt == $i;
        $pat .= rand (2) < 1 ? "\\p{IsDigit$i}" : "\\P{IsDigit$alt}";
    }
    ok $str =~ /^$pat$/, "random string $r";
}
        

__END__
 
 $Log: 04_digits_multi.t,v $
 Revision 1.2  2008/01/12 00:21:33  abigail
 - Added $VERSION
 - Added "no warnings 'syntax'"

