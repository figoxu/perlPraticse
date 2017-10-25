package bracesMatch;
use strict;
use warnings FATAL => 'all';

use Text::Balanced qw(extract_multiple extract_bracketed);

my $str = "abcd [abc[d]][abc][d]";
my @arr_str = extract_multiple($str,[sub { extract_bracketed($_[0], '[]') },qr/\S+/],undef,1);
foreach $str (@arr_str){
    print $str."\n";
}