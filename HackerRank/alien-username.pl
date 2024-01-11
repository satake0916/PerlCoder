my $n = <>;
for ( 1 .. $n ) {
    my $username = <>;
    my $result   = $username =~ m/^[._]\d+[a-zA-Z]*_?$/ ? "VALID" : "INVALID";
    print "$result\n";
}

