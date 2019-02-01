<?php
require 'dbconnect.php';

$id= $_REQUEST['id'];
$content_code = $_REQUEST['content_code'];

$name = $_REQUEST['name'];
$month = $_REQUEST['month'];
$year = $_REQUEST['year'];





$sql = "insert into Content(id,content_code, name,month, year) VALUES ('$id','$content_code','$name','$month','$year')";


if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listcontent.php';
</script>