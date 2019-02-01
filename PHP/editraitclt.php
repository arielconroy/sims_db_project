
<?php
require 'dbconnect.php';

$sql = "SELECT * FROM Trait where id = " . $_REQUEST['id'];

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
$type = $row['type'];
$content_id = $row['content_id'];






?>



<form action="edittraitsrv.php">
    <input type="hidden" name="id" value="<?php echo $id?>" />
    Name:<input name="name" value="<?php echo $name?>" /></br>
    Type:<input name="type"value="<?php echo $type?>" /></br>
    Content ID:<input name="content_id"value="<?php echo $content_id?>" /></br>




    <input type="submit" value="Save"/>
</form>