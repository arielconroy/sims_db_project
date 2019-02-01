<html>

<head></head>
<body>
<h2> List of Careers</h2><br>
<a href='menu.php'>Menu</a>
</body>
</html>
<?php
require 'dbconnect.php';

$sql = "SELECT r.id, r.name,r.skill,r.sec_skill,r.branch,r.branch_sec, c.name AS content_id FROM Career r ";
$sql .= "inner Join Content c on c.id=r.content_id";
if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "<table border=1>";
echo "<tr><th>Career ID</th><th>Content Name</th><th>Name</th><th>Primary Skill</th><th>Secondary Skill</th><th>Branch</th><th>Second Branch</th><th>Actions</th></tr>";
while ($s = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $s["id"] . "</td>";
    echo "<td>" . $s["content_id"] . "</td>";

    echo "<td>" . $s["name"] . "</td>";
    echo "<td>" . $s["skill"] . "</td>";
    echo "<td>" . $s["sec_skill"] . "</td>";
    echo "<td>" . $s["branch"] . "</td>";
    echo "<td>" . $s["branch_sec"] . "</td>";




    echo "<td>";
    echo "<a href='editcareerclt.php?id=" . $s["id"] . "'>EDIT</a> ";


    echo "<a href='delcarsrv.php?id=" . $s["id"] . "'>DELETE</a> ";
    echo "</td>";
    echo "</tr>";

}
echo "</table>";
?>
<a href='addcareerclt.html'>Add New</a>
