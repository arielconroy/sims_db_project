<?php

require 'dbconnect.php';

$sql = "SELECT * from Skill where id = " . $_REQUEST['id'];

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
$row = $result->fetch_assoc();
$id = $row['id'];

$name = $row['name'];
$min_level = $row['min_level'];
$max_level = $row['max_level'];
$content_id = $row['content_id'];



?>



<form action="editskillsrv.php">
<input type="hidden" name="id" value="<?php echo $id?>" />

<!--Id:<input name="id" value="--><?php //echo $id?><!--" /></br>-->

Name:<input name="name" value="<?php echo $name?>" /></br>
Min Level:<input name="min_level"value="<?php echo $min_level?>" /></br>
Max Level:<input name="max_level"value="<?php echo $max_level?>" /></br>
Content ID:<input name="content_id"value="<?php echo $content_id?>" /></br>

<input type="submit" value="Save"/>
</form>
