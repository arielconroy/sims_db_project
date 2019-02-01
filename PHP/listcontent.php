<html>

<head></head>
<body>
<h2> List of Content</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';


$sql="SELECT id,content_code ,name,year,month FROM Content";


if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>ID</th><th>Content ID</th><th>Content Name</th><th>Month</th><th>Year</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";

    echo "<td>" . $s["id"] . "</td>";
    echo "<td>" . $s["content_code"] . "</td>";
    echo "<td>" . $s["name"] . "</td>";
    echo "<td>" . $s["month"] . "</td>";

    echo "<td>" . $s["year"] . "</td>";
    echo "<td>";
  echo "<a href='editcontentclt.php?id=" . $s["id"] . "'>EDIT</a> ";
    echo "<a href='delcontentsrv.php?id=" . $s["id"] . "'>DELETE</a> ";
    echo "</td>";
    echo "</tr>";

}
echo "</table>";

$sql = "CALL getNumOfEP()";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo "Number of Expansion Packs: ";
echo $row['numEPs'];

echo "<br>";

?>
<a href='addcontentclt.htm'>Add New</a> <br>
<a href='traitview.php'>Trait View</a> <br>
<a href='contentview.php'>World Content View</a> <br>


