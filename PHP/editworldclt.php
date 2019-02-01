<?php
require 'dbconnect.php';

$sql = "SELECT * from World where id = " . $_REQUEST['id'];

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
$total_lots = $row['total_lots'];
$empty_lots = $row['empty_lots'];
$occupied_lots = $row['occupied_lots'];
$content_id = $row['content_id'];




?>



<form action="editworldsrv.php">
<input type="hidden" name="id" value="<?php echo $id?>" />
Name:<input name="name" value="<?php echo $name?>" /></br>
Total Number of Lots:<input name="total_lots"value="<?php echo $total_lots?>" /></br>
Number of Empty Lots:<input name="empty_lots"value="<?php echo $empty_lots?>" /></br>
Number of Occupied Lots:<input name="occupied_lots"value="<?php echo $occupied_lots?>" /></br>
Content ID:<input name="content_id"value="<?php echo $content_id?>" /></br>


    <input type="submit" value="Save"/>
</form>