#!/usr/bin/perl -w
use strict;
use POSIX;

# What is the largest prime factor of 
# the number 600851475143

my ($base, $i) = (600851475143, 3);
my @list;
my ($j) = (0);
my $list;

do {
	if($base % $i == 0) {
		push(@list, $i);
		$i += 2;
	}
	else {	
	$i += 2;
	}
} until ($i > sqrt($base));

foreach (@list) {
	print $_ . "\n";

}


exit;