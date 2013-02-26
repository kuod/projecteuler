 #!/usr/bin/perl -w
use strict;
my $i;
my ($total) = (2);


for ($i = 3; $i < 2000000; $i+=2)
{

	if (isPrime($i))
	{
		$total+=$i;
	}

}

print "$total\n"; 

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
 
