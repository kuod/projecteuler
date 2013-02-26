#!/usr/bin/perl -w
use strict;
use bigint;
my $factorial;
my @factors;
my @sum;
my $total;

@factors = (1..100);

$factorial = 1;
$factorial *= $_ foreach @factors;

@sum = split(//,$factorial);

for(@sum) 
{
	$total += $_;
}

print qq(The answer is: $total\n); #648

exit; 