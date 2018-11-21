#!/usr/bin/perl
use strict;
use warnings;

if (!-d 'pans/upstream') {
    system 'opan init';
}

unshift @ARGV, 'opan';

exec @ARGV;

