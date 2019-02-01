<?php
require 'dbconnect.php';


$id = $_REQUEST['id'];

$name = $_REQUEST['name'];
$type = $_REQUEST['type'];
$content_id = $_REQUEST['content_id'];


$sql = "update Trait set id='$id', name='$name',type='$type',content_id='$content_id' where id= $id";



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