<?php
require 'dbconnect.php';

$sql = "SELECT * from Sim where id = " . $_REQUEST['id'];

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
$lifestage = $row['lifestage'];
$career = $row['career'];
$world = $row['world'];
$aspiration = $row['aspiration'];
$content_id = $row['content_id'];





?>



<form action="editsimssrv.php">
<input type="hidden" name="id" value="<?php echo $id?>" />

<!--Id:<input name="id" value="--><?php //echo $id?><!--" /></br>-->

Name:<input name="name" value="<?php echo $name?>" /></br>
LifeStage:<input name="lifestage"value="<?php echo $lifestage?>" /></br>
Career:<input name="career"value="<?php echo $career?>" /></br>
World:<input name="world"value="<?php echo $world?>" /></br>
Aspiration:<input name="aspiration"value="<?php echo $aspiration?>" /></br>
Content ID:<input name="content_id"value="<?php echo $content_id?>" /></br>


    <input type="submit" value="Save"/>
</form>
