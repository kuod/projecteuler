 #!/usr/bin/perl -w
#use strict;
use bigint;
my $i;
my @x;
my $total;

$i = 2 ** 1000;

@x = split(//,$i);

for (@x) 
{
	$total += $_;
}

print qq(The answer is: $total\n); #1366

exit;