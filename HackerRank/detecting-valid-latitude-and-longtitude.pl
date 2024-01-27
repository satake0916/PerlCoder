use strict;
use warnings;

my $x_reg = qr/[+-]?(([1-8]\d|\d|)(\.\d+)?|90(\.0+)?)/;
my $y_reg = qr/[+-]?((1[0-7]\d|[1-9]\d|\d|)(\.\d+)?|180(\.0+)?)/;

my $n = <>;
chomp $n;

for ( 1 .. $n ) {
    my $text = <>;
    chomp $text;
    print $text =~ m/\($x_reg, $y_reg\)/ ? "Valid\n" : "Invalid\n";
}

