$n = <>;
for ( 1 .. $n ) {
    $text = <>;
    while ( $text =~ m/(\w+(?:\.\w+)*@\w+(?:\.\w+)*)/g ) {
        $emails{$1} = 1;
    }
}
print join( ';', sort keys(%emails) )

