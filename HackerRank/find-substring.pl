use strict;
use warnings;

my $n     = <>;
my @texts = ();

for ( 1 .. $n ) {
    my $text = <>;
    push @texts, $text;
}

my $q = <>;
for ( 1 .. $q ) {
    my $s = <>;
    chomp $s;
    my $count = 0;
    for my $text (@texts) {
        while ( $text =~ m/(?<=\w)$s(?=\w)/g ) {
            $count++;
        }
    }
    print "$count\n";
}

