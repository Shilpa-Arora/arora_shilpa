<?php
$q=$_GET['custid'];
$connection = mysqli_connect('localhost', 'root', '', 'db_foody');
$food = array();
$sql="SELECT * FROM db_menuitems WHERE menu_id =".$q;

$result = mysqli_query($connection, $sql);


while($row = mysqli_fetch_array($result)) 
{
	foreach($row as $anime => $value) {
		$json = array(
			'item_name' => $row['item_name'],
			'Price' => $row['Price']
			);
		array_push($food, $json); 
	}

Switch($q)
{
	
	case 1:	
	
	echo json_encode($json);
 
	break;
	case 2:	
	echo json_encode($json);

 
	break;
	case 3:	
	echo json_encode($json);

 
	break;
	case 4:	
	echo json_encode($json);

 
	break;
	case 5:	
	echo json_encode($json);

 
	break;
	
}


}
?>