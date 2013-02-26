#!/usr/bin/perl -w
use strict;

# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

my ($n)  = (1);

while($n % 20 != 0 ||
	$n % 19 != 0 ||
	$n % 18 != 0 ||
	$n % 17 != 0 ||
	$n % 16 != 0 ||
	$n % 15 != 0 ||
	$n % 14 != 0 ||
	$n % 13 != 0 ||
	$n % 12 != 0 ||
	$n % 11 != 0){
	$n++;
	}

print "Solution is:\n\n";
print $n; #232792560

exit;