use DBI;
use DBD::mysql;

$platform="mysql";
$database="sakila";
$host="localhost";
$port="3306";
$tablename="actor";
$user="root";
$pw="sreeky";

$dsn="dbi:mysql:$database:localhost:3306";

$dbstore=DBI->connect($dsn,$user,$pw) or die "Unable To Connect";

$query="select city,city_id from city where city_id>?";
$query_handle=$dbstore->prepare($query);
$query_handle->execute(5020);
print $query_handle->rows();

$query_handle->bind_columns(\$city,\$city_id);

while($query_handle->fetch()){
if ($city_id > 500){
print $city,$city_id ;
print "\n";
}
}

