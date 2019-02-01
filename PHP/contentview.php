<html>
<body>

<h2>World Content View</h2>
<a href='menu.php'>Menu</a>

</body>

</html>
<?php
require 'dbconnect.php';


$sql="SELECT * FROM contentView";


if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>Content Name</th><th>Year</th><th>Month</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";

    echo "<td>" . $s["world_content"] . "</td>";
    echo "<td>" . $s["year"] . "</td>";
    echo "<td>" . $s["month"] . "</td>";


    echo "</tr>";

}
echo "</table>";
?>
<a href='listcontent.php'>Content View</a>