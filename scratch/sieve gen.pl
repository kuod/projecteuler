print "\n=======================\n";
print "PRIME NUMBERS GENERATOR\n";
print "=======================\n";
# Get the range
print "Minimum value of primes: ";
my $min = <STDIN>;
chomp $min;
print "Maximum value of primes: ";
my $max = <STDIN>;
chomp $max;
# Create a max-sized array
my @primes = (1...$max);
# Initially assume all numbers are prime
for($i = 0; $i < $max; $i++) {    
 $primes[$i] = 1;
}
# The sieve
for ($i=2; $i*$i <= $max;$i+=1) {    
 if ($primes[$i]) {        
   for ($j=$i; $j*$i < $max; $j+=1) {            
     print "$i * $j\n";
     $primes[$i * $j] = 0;        
   }    
 }
}
# Show the results
my @p = ();
for ($i=$min; $i<=$max; $i++) {    
 if ($primes[$i]) {        
   push @p, $i;    
 }
}
$size = @p;

for (@p)
{
	$total+=$_;
}

print qq(Total is $total\n);

exit;