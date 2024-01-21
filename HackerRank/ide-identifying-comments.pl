my $in_comment = 0;
while (<>) {
    s/\s+\Z//;
    s/\A\s+//;
    if (m{(//.*)$}) {
        print "$1\n";
        next;
    }
    if (m{(/\*.*\*/)}) {
        print "$1\n";
        next;
    }
    if ($in_comment) {
        if (m{(.*\*/)}) {
            print "$1\n";
            $in_comment = 0;
        }
        else {
            print "$_\n";
        }
    }
    else {
        if (m{(/\*.*)}) {
            print "$1\n";
            $in_comment = 1;
        }
    }
}

