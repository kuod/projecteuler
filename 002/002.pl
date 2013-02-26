#!/usr/bin/perl -w
use strict;

# Find the sum of the even Fibonacci numbers
# under 4000000

my ($n, $i, $t, @x) = (33, 0, 0, @_);

# $n is 33 because there are 33 terms under 4000000
# $i stores the Fibonacci number
# $t is the total
# @x stores the even Fibonacci numbers

# Psuedocode
# For each term from $n = 0 to $n = 33, 
# Calculate the fibonacci seq
# If it's even, keep
# if it's odd, discard
# Store all even ones in an array
# sum the array

while($n > 0) {
	$i = fibRec($n);
	if($i%2 eq 0) {
	push(@x, $i);
	print "$i is even\n\n";
	}
	$n--;
}

($t+=$_) for @x;
print $t;
 

sub fibRec {
	my $n = shift;
	$n < 2 ? $n :fibRec($n - 1) + fibRec($n - 2);
}

exit;