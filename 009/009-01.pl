#!/usr/bin/perl -w
use strict;
my $i;
my $j;
my $k;

for ($i = 0; $i <= 500; $i++)
{
	for($j = 0; $j <= 500; $j++)
	{
		if($i ** 2 + $j ** 2 == (1000-$i-$j)*(1000-$i-$j))
		{
			print $i*$j*(1000-$i-$j) . "\n";
		}		
	}
		
}

exit; 