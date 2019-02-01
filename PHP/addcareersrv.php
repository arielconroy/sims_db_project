<?php
require 'dbconnect.php';
$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$skill = $_REQUEST['skill'];
$sec_skill = $_REQUEST['sec_skill'];
$branch = $_REQUEST['branch'];
$branch_sec = $_REQUEST['branch_sec'];
$content_id = $_REQUEST['content_id'];



$sql = "insert into Career (id,name,skill,sec_skill,branch,branch_sec,content_id) VALUES ('$id','$name','$skill','$sec_skill','$branch','$branch_sec','$content_id')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
    window.location = 'listcareers.php';
</script>