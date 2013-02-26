# Begin at j = 1
	# Add one 
	# Determine how many factors are for J
	# factor number is i
	# continue until i is 	

#!/usr/bin/perl -w
use strict;
#use bigint;

my ($i) = (12375);
my $j;
my $k;
my $x;
my $y;


while ($i>0)
{
	$x = 0.5*$i*($i+1);
	print $x . "\n";
	$y = &findFactor($x);
	if ($y > 1)
	{
		print qq($x has $y factors\n);
		exit;
	} else {
		$i++
	}
}

sub findFactor
{
	$j = 1;
	$k = 1;
	while ($j<$_[0])
	{
		if ($_[0] % $j == 0)
		{ 
			$k++;
			$j++;
		} else {
			$j++;
		}
	}
	return $k;
}
