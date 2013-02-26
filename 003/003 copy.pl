#!/usr/bin/perl -w
use strict;
use POSIX;

# What is the largest prime factor of 
# the number 600851475143

my ($base, $i) = (13195, 1);

do {
	if($base % $i == 0) {
		print "$i\n";
		$i++
	}
	else {	
	$i++;
	}
} until ($i == 114);
exit;