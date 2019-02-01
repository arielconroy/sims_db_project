<?php
require 'dbconnect.php';

$id = $_REQUEST['id'];
$content_code = $_REQUEST['content_code'];

$name = $_REQUEST['name'];
$month = $_REQUEST['month'];
$year = $_REQUEST['year'];




$sql = "UPDATE Content SET id='$id',content_code='$content_code',name='$name',month='$month',year='$year'where id= $id";



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