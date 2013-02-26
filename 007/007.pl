 #!/usr/bin/perl -w
use strict;
my ($i) = (0);
my (@count) = (1,2);

# Psuedocode

#begin at 1
#test if number is prime
#add prime numbers to an array
#print the 1001 element of the array

for ($i = 3; $i < 104744; $i+=2)
{

	if (isPrime($i))
	{
		push(@count,$i);
		if($count[10001])
		{
			last;
		}
	}

}

print "$count[10001]\n"; #104743


sub isPrime
{
  my $j;
 
  for ($j=3; $j<$_[0]; $j+=2)
  {
    if (!($_[0]%$j))
    {
      return 0;
    }
  }
 
  return 1;
}

exit;
 
