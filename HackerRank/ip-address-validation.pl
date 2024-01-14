$n = <>;
for ( 1 .. $n ) {
    chomp( $text = <> );
    $ipv4 = qr/\d\d?|[01]\d\d|2[0-4]\d|25\d/;
    $ipv6 = qr/[\d1-f]{,3}/;
    if ( $text =~ m/^$ipv4\.$ipv4\.$ipv4\.$ipv4$/ ) {
        print "IPv4\n";
    }
    elsif ( $text =~ m/^$ipv6:$ipv6:$ipv6:$ipv6:$ipv6:$ipv6:$ipv6:$ipv6$/ ) {
        print "IPv6\n";
    }
    else {
        print "Neither\n";
    }
}
