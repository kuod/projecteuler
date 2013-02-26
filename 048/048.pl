#!/usr/bin/perl -w
use strict;
use bigint;
my $i;
my ($x)=(0);

for ($i=1; $i<1001; $i++)
{
	$x += $i ** $i;
}

print substr($x,-10); #9110846700

exit;