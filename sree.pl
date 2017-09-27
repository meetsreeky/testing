open FILE,shift(@ARGV);

foreach(<FILE>){
if ( $_ =~ m/^[\[][0-9]-[0-9A-Z]+$/ ){print;}
}