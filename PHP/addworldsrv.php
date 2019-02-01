<?php
require 'dbconnect.php';

$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$total_lots = $_REQUEST['total_lots'];
$empty_lots = $_REQUEST['empty_lots'];
$occupied_lots = $_REQUEST['occupied_lots'];
$content_id = $_REQUEST['content_id'];


$sql = "insert into World (id,name,total_lots,empty_lots,occupied_lots, content_id) VALUES ('$id','$name','$total_lots','$empty_lots','$occupied_lots','$content_id')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listworlds.php';
</script>