#!/usr/bin/perl -w
# Sum of numbers below 1000 divisible by 3 and 5 

# subroutine to sum values in the array
sub sum_array {
	my(@vals) = @_;
	my($sum) = 0;
	
	foreach $i (@vals) {
		$sum = $sum + $i;
	}
	return($sum);
}

# For all numbers under 1000, store in an array everything that 
# is divisble by 15
for($i = 1; $i < 1000; $i++) {
	if ($i % 15 eq 0) {
		push (@fifteen, "$i");
	}
}

# For all numbers under 1000, store in an array everything that 
# is divisible by 3
for($j = 1; $j < 1000; $j++) {
	if ($j % 3 eq 0) {
		push (@three, "$j");
	}
}

# For all numbers under 1000, store in an array everything that
# is divisible by 5
for($k = 1; $k < 1000; $k++) {
	if ($k % 5 eq 0) {
		push (@five, "$k");
	}
}

# Sum all of the values up in the arrays
$fifteensum = sum_array(@fifteen);

$threesum = sum_array(@three);

$fivesum = sum_array(@five);

# $finalsum will be sum of the threesum and fivesum subtracted by 
# the fifteensum
$finalsum = $threesum + $fivesum - $fifteensum;

print $finalsum; #233168

# exit the program

exit;