use strict;
use warnings;

my $input = <>;
my ($a, $b) = split / /, $input;

print($a * $b %2 == 0 ? "Even" : "Odd");

