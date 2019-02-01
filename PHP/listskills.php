<html>

<head></head>
<body>
<h2> List of Skills</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';

$sql = "SELECT k.id, k.name, k.min_level,k.max_level,c.name AS content_id from Skill k ";
$sql .= "inner Join Content c on c.id=k.content_id";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>ID</th><th>Content Name</th><th>Name</th><th>Min Level</th><th>Max Level</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $s["id"] . "</td>";
    echo "<td>" . $s["content_id"] . "</td>";


    echo "<td>" . $s["name"] . "</td>";
    echo "<td>" . $s["min_level"] . "</td>";
    echo "<td>" . $s["max_level"] . "</td>";


    echo "<td>";
    echo "<a href='editskillclt.php?id=" . $s["id"] . "'>EDIT</a> ";


    echo "<a href='delskillsrv.php?id=" . $s["id"] . "'>DELETE</a> ";
    echo "</td>";
    echo "</tr>";

}
echo "</table>";


?>
<a href='addskillclt.html'>Add New</a>
