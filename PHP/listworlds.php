<html>

<head></head>
<body>
<h2> List of Worlds</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';


$sql = "SELECT w.id AS id, w.name, w.total_lots, w.empty_lots, w.occupied_lots,c.name AS content_id, lotsLeft(occupied_lots,total_lots) AS lots_left FROM World w ";
$sql .= "inner Join Content c on c.id=w.content_id";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}



echo "<table border=1>";
echo "<tr><th>ID</th><th>Content Name</th><th>Name</th><th>Total Number of Lots</th><th>Number of Empty Lots</th><th>Numbers of Occupied Lots</th><th>Lots Left</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td>" . $s["id"] . "</td>";
    echo "<td>" . $s["content_id"] . "</td>";

    echo "<td>" . $s["name"] . "</td>";
  echo "<td>" . $s["total_lots"] . "</td>"; 
  echo "<td>" . $s["empty_lots"] . "</td>"; 
  echo "<td>" . $s["occupied_lots"] . "</td>";
    echo "<td>" . $s["lots_left"] . "</td>";




    echo "<td>";
  echo "<a href='editworldclt.php?id=" . $s["id"] . "'>EDIT</a> ";

  
  echo "<a href='delworldsrv.php?id=" . $s["id"] . "'>DELETE</a> ";
  echo "</td>";
  echo "</tr>";

}
echo "</table>";

echo "<h3>" ;
echo "Reports:";
echo "</h3>";
echo "<br>";

echo "Total Number of Lots For All Worlds: ";
$sql = "select SUM(total_lots) AS total_lots FROM World";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo $row['total_lots'];
echo "<br>";

echo "Total Number of Empty Lots: ";
$sql = "select SUM(empty_lots) AS totalEmptyLots FROM World";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo $row['totalEmptyLots'];
echo "<br>";
echo "Total Number of Occupied Lots: ";
$sql = "select SUM(occupied_lots) AS totaloccupiedLots FROM World";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo $row['totaloccupiedLots'];
echo "<br>";

echo "Average of Empty Lots: ";
$sql = "select AVG(empty_lots) AS emptyLotAvg FROM World";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo $row['emptyLotAvg'];
echo "<br>";

echo "Max Number of Total Lots: ";
$sql = "select MAx(total_lots) AS totalLotMax FROM World";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo $row['totalLotMax'];
echo "<br>";
echo "Min Number of Total Lots: ";
$sql = "select MIN(total_lots) AS totalLotMin FROM World";
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
echo $row['totalLotMin'];
echo "<br>";





?>
<a href='addworldclt.htm'>Add New</a>
