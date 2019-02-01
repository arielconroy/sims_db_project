<?php
require 'dbconnect.php';

$id= $_REQUEST['id'];
$name = $_REQUEST['name'];
$reward_trait= $_REQUEST['reward_trait'];
$bonus_trait = $_REQUEST['bonus_trait'];
$content_id = $_REQUEST['content_id'];




$sql = "insert into Aspiration (id,name,reward_trait, bonus_trait,content_id) VALUES ('$id','$name','$reward_trait','$bonus_trait','$content_id')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
    window.location = 'listasp.php';
</script>