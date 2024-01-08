use strict;
use warnings;

sub strip{
  my $str = shift;
  $str =~ s/^\s*(.*?)\s*$/\1/;
  return $str;
}

my $n = <>;

for (1..$n){
  my $text = <>;
  while ($text =~ m/<a href="([^"]*)".*?>(.*?)(?=<\/a>)/g){
    my $href = strip($1);
    my $title = strip($2);
    $title =~ s/<.*?>//g;
    print "$href,$title\n";
  }
}

