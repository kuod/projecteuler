#!/usr/bin/perl -w
use strict;

my($i, $j, $a, $b) = (0,0,0,0);

for($j = 999; $j > 800; $j--){
	palCheck($j);
}


sub palCheck 
{
for($i = 998; $i > 800; $i--){
	$a = $i * $_[0];
	$b = reverse $a;
	if(($b == $a) && ($a > 900000)) {
	print "$i " . "and " . "$_[0] " . "are " . "$a" . "\n";
	}
}
}
exit;