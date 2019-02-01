<html>

<head></head>
<body>
<h2> List of Aspirations</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';
if ($mysqli->connect_errno) {
    echo "Errno: " . $mysqli->connect_errno . "</br>";
    echo "Error: " . $mysqli->connect_error . "</br>";
    exit;
}


$sql= "SELECT a.id, a.name, a.reward_trait,a.bonus_trait, c.name AS content_id FROM Aspiration a ";
$sql .= "inner Join Content c on c.id=a.content_id";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}



echo "<table border=1>";
echo "<tr><th>ID</th><th>Name</th><th>Reward Trait</th><th>Bonus Trait</th><th>Content Name</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $s["id"] . "</td>";

    echo "<td>" . $s["name"] . "</td>";
    echo "<td>" . $s["reward_trait"] . "</td>";
    echo "<td>" . $s["bonus_trait"] . "</td>";
    echo "<td>" . $s["content_id"] . "</td>";



    echo "<td>";
    echo "<a href='editaspclt.php?id=" . $s["id"] . "'>EDIT</a> ";


    echo "<a href='delaspsrv.php?id=" . $s["id"] . "'>DELETE</a> ";
    echo "</td>";
    echo "</tr>";

}
echo "</table>";
?>
<a href='addaspclt.html'>Add New</a>
