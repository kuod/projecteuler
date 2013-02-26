 #!/usr/bin/perl -w
use strict;
my $i;
my $j;
my $k;
my $l;
my $total;
my @primes;
my $primes;
my @total;
my $ans;

for ($i = 0; $i < 10000000; $i++)
{
	$primes[$i] = 1;
}	
for ($j = 2; $j * $j < 10000000; $j++)
{
	if ($primes[$j]) 
	{
		for ($k = $j; $k * $j < 10000000; $k++)
		{
			$primes[$k * $j] = 0; 
		}		
	}
}

for ($l = 0; $l < 10000000; $l++)
{
	if ($primes[$l])
	{
		push(@total, $l);
	}
}


for (@total)
{
	$ans+=$_;
}

print "$ans\n"; #3203324994357

exit;