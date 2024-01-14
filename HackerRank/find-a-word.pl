use v5.10;

$n = <>;
for ( 1 .. $n ) { $text .= <> }
$t = <>;
for ( 1 .. $t ) {
    chomp( $target = <> );
    say scalar( () = $text =~ m/(?<!\w)$target(?!\w)/g );
}

