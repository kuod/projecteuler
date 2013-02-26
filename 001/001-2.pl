#!/usr/bin/perl -w
# Sum of numbers below 1000 divisible by 3 and 5 

for($i = 1; $i < 1000; $i++) {
	if ($i % 15 eq 0) {
		$j = $j + $i;
	}
}

print $j;

# exit the program

exit;