#!/usr/bin/perl -w
use strict;

# Find the difference between the sum of squares
# and the square of sums

my ($sumSq, @x, $x, $sqSum, @y, $y) = (0, 0, 0, 0, 0, 0);

# Add to an array all of the squares from 1-100
$sumSq = 1;
while($sumSq <= 100){
	push(@x, $sumSq ** 2);
	$sumSq++;
}

# Add to an array all of the numbers from 1-100
$sqSum = 1;
while($sqSum <= 100){
	push(@y, $sqSum);
	$sqSum++;
}

# Add all values of the array up into $x
($x+=$_) for @x;
print "Sum of Squares\n";
print $x . "\n\n"; #338350

# Add all values of the array up and then square its sum in $y
($y+=$_) for @y;
$y = $y ** 2;
print "Square of Sums\n";
print $y . "\n\n"; #25502500

print "Difference of Sum of Squares from Square of Sums\n\n";
print $y - $x . "\n\n"; #25164150

exit;