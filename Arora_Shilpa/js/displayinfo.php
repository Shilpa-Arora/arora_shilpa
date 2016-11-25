<?php
$q=$_GET['custid'];
$connection = mysqli_connect('localhost', 'root', '', 'db_plants');
$sql="SELECT * FROM herbal_plants WHERE id =".$q;
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_array($result);
print "<div>".$row['name'].", ".$row['treatment']."<br />".$row['info']."</div>";

?>