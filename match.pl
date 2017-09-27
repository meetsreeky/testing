open FILE,shift @ARGV;
$test="ee";

foreach (<FILE>){
if ($_ =~ m/(^.)/) { if ($_ =~ m/[$1]$/) {print}  };
}