
<?php
require 'dbconnect.php';

$sql = "SELECT * FROM Content where id = " . $_REQUEST['id'];

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
$row = $result->fetch_assoc();
$id = $row['id'];
$content_code = $row['content_code'];

$name = $row['name'];
$month = $row['month'];
$year = $row['year'];





?>



<form action="editcontentsrv.php">
<input type="hidden" name="id" value="<?php echo $id?>" />
Content Code:<input name="content_code" value="<?php echo $content_code?>" /></br>
Name:<input name="name" value="<?php echo $name?>" /></br>
Year:<input name="year"value="<?php echo $year?>" /></br>
Month:<input name="month"value="<?php echo $month?>" /></br>




    <input type="submit" value="Save"/>
</form>