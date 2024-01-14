$n = <>;
for ( 1 .. $n ) {
    chomp( $text = <> );
    while ( $text =~ m{https?://(?:ww[w2]\.)?([0-9a-zA-Z.-]+\.[0-9a-zA-Z]+)}g )
    {
        $emails{$1} = 1;
    }
}

print join(';', sort keys %emails);

