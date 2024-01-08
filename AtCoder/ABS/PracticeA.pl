use strict;
use warnings;

my $a = <>;

my $input = <>;
chomp $input;
my ($b, $c) = split / /, $input;
my $ret = $a + $b + $c;

my $s = <>;
chomp $s;

print "$ret $s\n";
