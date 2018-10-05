<?php 
require "conn.php";

$mysql_qry = $_POST["sqlQuery"]; //Query to be executed
$result = mysqli_query($conn ,$mysql_qry);

if($result != null) {

$fields = array();

for($i = 0; $i < $result->field_count; $i++) {
	$fields[$i] = $result->fetch_field()->name;
}

while($row = mysqli_fetch_array($result)) {

	for($i = 0; $i < $result->field_count; $i++) {
		echo $row[$fields[$i]].'|';	
	}
	echo "<br>";

}

}

?>