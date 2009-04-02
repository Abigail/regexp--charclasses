use strict;
use warnings;
no warnings 'syntax';

use 5.010;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile (
    NAME              => 'Regexp::CharClasses',
    VERSION_FROM      => 'lib/Regexp/CharClasses.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ABSTRACT_FROM     => 'lib/Regexp/CharClasses.pm',
    AUTHOR            => 'Abigail <abigail@abigail.be>',
);
