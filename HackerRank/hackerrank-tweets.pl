$n = <>;
chomp $n;

$count = 0;
for ( 1 .. $n ) {
    $text = <>;
    chomp $text;
    if ( $text =~ m/hackerrank/i ) {
        $count++;
    }
}

print $count;

