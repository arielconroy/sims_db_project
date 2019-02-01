<?php
require 'dbconnect.php';

$id= $_REQUEST['id'];
$name = $_REQUEST['name'];
$min_level = $_REQUEST['min_level'];
$max_level = $_REQUEST['max_level'];
$content_id = $_REQUEST['content_id'];




$sql = "insert into Skill(id,name,min_level, max_level,content_id) VALUES ('$id','$name','$min_level','$max_level','$content_id')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
    window.location = 'listskills.php';
</script>