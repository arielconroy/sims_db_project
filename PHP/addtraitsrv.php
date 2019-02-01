<?php
require 'dbconnect.php';
$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$type = $_REQUEST['type'];
$content_id = $_REQUEST['content_id'];

$sql = "insert into Trait (id,name,type,content_id) VALUES ('$id','$name','$type','$content_id')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
    window.location = 'listtraits.php';
</script>