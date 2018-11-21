#!/usr/bin/perl
use strict;
use warnings;

die "Environment variable OPAN_AUTH_TOKENS is required!\n" unless $ENV{OPAN_AUTH_TOKENS};

if (!-d 'pans/upstream') {
    system 'opan init';
}

unshift @ARGV, 'opan';

exec @ARGV;

