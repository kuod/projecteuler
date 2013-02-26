#!/usr/bin/perl
 
$i = 0;
 
do {
 
   $j = 1;
   $mod = 0;
   $i++;
 
   while ( $mod == 0 && $j <= 20 ) {
      $mod = $i % $j;
      $j++;
   }
 
} while ( $mod != 0 );
 
print "$i\n";