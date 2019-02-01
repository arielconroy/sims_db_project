<?php
require 'dbconnect.php';


$id = $_REQUEST['id'];

$name = $_REQUEST['name'];
$min_level = $_REQUEST['min_level'];
$max_level = $_REQUEST['max_level'];
$content_id = $_REQUEST['content_id'];


$sql = "update Skill set id='$id', name='$name',min_level='$min_level',max_level='$max_level',content_id='$content_id' where id= $id";



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