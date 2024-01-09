use strict;
use warnings;

my $n = <>;
my %ans = ();

for (1..$n){
  my $text = <>;
  while($text =~ m{<\s*(\w+)[^<>]*/?>}g){
    $ans{$1} = 1;
  }
}
print join ';', sort keys %ans;

