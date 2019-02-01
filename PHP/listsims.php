<html>

<head></head>
<body>
<h2> List of Sims</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';

$sql = "SELECT s.id, s.name,s.lifestage,s.career,s.world,s.aspiration, c.name AS content_id FROM Sim s ";
$sql .= "inner Join Content c on c.id=s.content_id";




if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>Sim ID</th><th>Content Name</th><th>Name</th><th>LifeStage</th><th>Career</th><th>World</th><th>Aspiration</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td>" . $s["id"] . "</td>";
    echo "<td>" . $s["content_id"] . "</td>";
    echo "<td>" . $s["name"] . "</td>";
  echo "<td>" . $s["lifestage"] . "</td>";
  echo "<td>" . $s["career"] . "</td>";
  echo "<td>" . $s["world"] . "</td>";
  echo "<td>" . $s["aspiration"] . "</td>";



    echo "<td>";
  echo "<a href='editsimsclt.php?id=" . $s["id"] . "'>EDIT</a> ";

  
  echo "<a href='delsimssrv.php?id=" . $s["id"] . "'>DELETE</a> ";
  echo "</td>";
  echo "</tr>";

}
echo "</table>";
?>
<a href='addsimsclt.htm'>Add New</a>
