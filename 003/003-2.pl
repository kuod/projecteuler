$nbr = 600851475143;
 
if (isPrime($nbr))
{
  print $nbr, "\n";
}
else
{
  for ($i=3; $i<=$nbr; $i+=2)
  {
    if (!($nbr%$i))
    {
      $j = $nbr/$i;
      if (isPrime($j))
      {
        print $j, "\n";
        last;
      }
    }
  }
} 
 
 
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