#!/usr/bin/perl

use Test::More tests => 5;

use strict;
use warnings;
no warnings 'syntax';

our ($VERSION) = q $Revision: 1.2 $ =~ /[\d.]+/g;

BEGIN {
    use_ok ('Regexp::CharClasses')
};

ok 1 =~ /\p{IsDigit1}/, "testing 1 ";
ok 2 !~ /\p{IsDigit1}/, "testing 2 ";
ok 3 =~ /\P{IsDigit1}/, "testing 3 ";
ok 11 =~ /\p{IsDigit1}\p{IsDigit1}/, "testing 11 ";

__END__

 $Log: 01_digits.t,v $
 Revision 1.2  2008/01/12 00:21:33  abigail
 - Added $VERSION
 - Added "no warnings 'syntax'"

