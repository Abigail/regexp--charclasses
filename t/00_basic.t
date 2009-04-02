#!/usr/bin/perl

use Test::More tests => 2;

use strict;
use warnings;
no warnings 'syntax';

our ($VERSION) = q $Revision: 1.2 $ =~ /[\d.]+/g;

BEGIN {
    use_ok ('Regexp::CharClasses')
};

ok (defined $Regexp::CharClasses::VERSION, "VERSION is set");

__END__

 $Log: 00_basic.t,v $
 Revision 1.2  2008/01/12 00:21:33  abigail
 - Added $VERSION
 - Added "no warnings 'syntax'"

