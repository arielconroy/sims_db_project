<html>
<body>

<h2>Trait Content View</h2>
<a href='menu.php'>Menu</a>

</body>

</html>
<?php
require 'dbconnect.php';


$sql="SELECT * FROM traitView ORDER BY year";


if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>Game Code</th><th>Content Name</th><th>Year</th><th>Month</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $s["content_code"] . "</td>";

    echo "<td>" . $s["trait_content"] . "</td>";
    echo "<td>" . $s["year"] . "</td>";
    echo "<td>" . $s["month"] . "</td>";


    echo "</tr>";

}
echo "</table>";
?>
<a href='listcontent.php'>Content View</a>