$var=4;
open ($test,"testing.txt");

while (<$test>){

if ($. < $var+4 and $. > $var-2 ){
print $.,$_;
};
};