<?php
require 'dbconnect.php';


$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$lifestage = $_REQUEST['lifestage'];
$career = $_REQUEST['career'];
$world = $_REQUEST['world'];
$aspiration = $_REQUEST['aspiration'];
$content_id = $_REQUEST['content_id'];



$sql = "update Sim set id='$id', name='$name',lifestage='$lifestage',career='$career',world='$world',aspiration='$aspiration',content_id='$content_id' where id= $id";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listsims.php';
</script>