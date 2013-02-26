#!/usr/bin/perl -w
use strict;
my $i;
my $j;
my $k;

for ($i = 0; $i <= 500; $i++)
{
	for($j = 0; $j <= 500; $j++)
	{
		$k = sqrt(($i **2)+($j**2));
		if ($k =~ m/^\d+$/)
		{ 
			if ($k + $j + $i == 1000)
			{
				if (!($i*$j*$k== 0))
				{
					print "$i*$j*$k" . "=" . $i*$j*$k . "\n"; #3187500
				}
				
			}
			
		}
	}
}

exit; 