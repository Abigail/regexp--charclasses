#!/usr/bin/perl

use Test::More tests => 0x1002;

use strict;
use warnings;
no warnings 'syntax';

our ($VERSION) = q $Revision: 1.2 $ =~ /[\d.]+/g;

BEGIN {
    use_ok ('Regexp::CharClasses')
};

my @sigils = qw [$ @ % & *];
my %sigils = map {($_ => 1)} @sigils;

foreach my $s (@sigils) {
    ok $s =~ /^\p{IsPerlSigil}$/, "sigil $s";
}

foreach my $c (0x00 .. 0x1000) {
    my $char = chr $c;
    next if $sigils {$char};
    my $h    = sprintf "%04x" => $c;
    ok $char =~ /^\P{IsPerlSigil}$/, "\\x{$h} is not a sigil";
}

__END__

 $Log: 05_sigil.t,v $
 Revision 1.2  2008/01/12 00:21:33  abigail
 - Added $VERSION
 - Added "no warnings 'syntax'"

