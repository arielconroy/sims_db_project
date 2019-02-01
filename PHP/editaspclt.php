<?php
require 'dbconnect.php';

$sql = "SELECT * FROM Aspiration where id = " . $_REQUEST['id'];

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
$reward_trait = $row['reward_trait'];
$bonus_trait = $row['bonus_trait'];
$content_id = $row['content_id'];






?>



<form action="editaspsrv.php">
    <input type="hidden" name="id" value="<?php echo $id?>" />
    <!--Id:<input name="id"value="--><?php //echo $id?><!--" /></br>-->
    Name:<input name="name" value="<?php echo $name?>" /></br>
   Reward Trait:<input name="reward_trait"value="<?php echo $reward_trait?>" /></br>
    Bonus Trait:<input name="bonus_trait"value="<?php echo $bonus_trait?>" /></br>
    Content ID:<input name="content_id"value="<?php echo $content_id?>" /></br>


    <input type="submit" value="Save"/>
</form>