$file=shift(@ARGV);

my %hash;

open FILE,$file;

foreach (<FILE>){

my @list;

@list= split " ",$_;

foreach (@list){
$hash{$_}++;
}



}



foreach (keys %hash){

print "$_ => $hash{$_}\n";


}