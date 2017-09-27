@list=@ARGV;


print "@list\n";

@temp=@list;
$count=@temp;
@list="";

for(1..$count){

push @list,pop @temp;

}

print @list;

