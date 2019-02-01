<?php
require 'dbconnect.php';

$sql = "SELECT * FROM Career where id = " . $_REQUEST['id'];

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
$skill = $row['skill'];
$sec_skill = $row['sec_skill'];
$branch = $row['branch'];
$branch_sec = $row['branch_sec'];
$content_id = $row['content_id'];







?>



<form action="editcareersrv.php">
<input type="hidden" name="id" value="<?php echo $id?>" />
<!--ID:<input name="id" value="--><?php //echo $id?><!--" /></br>-->
Name:<input name="name" value="<?php echo $name?>" /></br>
Skill:<input name="skill"value="<?php echo $skill?>" /></br>
Second Skill:<input name="sec_skill"value="<?php echo $sec_skill?>" /></br>
Branch:<input name="branch"value="<?php echo $branch?>" /></br>
Second Branch::<input name="branch_sec"value="<?php echo $branch_sec?>" /></br>
Content ID::<input name="content_id"value="<?php echo $content_id?>" /></br>


    <input type="submit" value="Save"/>
</form>