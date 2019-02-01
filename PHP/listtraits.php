<html>

<head></head>
<body>
<h2> List of Traits</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';

$sql = "SELECT t.id,t.name, t.type, c.name AS content_id from Trait  t ";
$sql .= "inner Join Content c on c.id=t.content_id";


if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>ID</th><th>Content Name</th><th>Name</th><th>Type</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $s["id"] . "</td>";
    echo "<td>" . $s["content_id"] . "</td>";


    echo "<td>" . $s["name"] . "</td>";
    echo "<td>" . $s["type"] . "</td>";


    echo "<td>";
    echo "<a href='editraitclt.php?id=" . $s["id"] . "'>EDIT</a> ";


    echo "<a href='deltraitsrv.php?id=" . $s["id"] . "'>DELETE</a> ";
    echo "</td>";
    echo "</tr>";

}
echo "</table>";
?>
<a href='addtraitclt.html'>Add New</a>
