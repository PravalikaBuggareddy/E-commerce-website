<?php

include 'Connection.php';

if(isset($_POST['submit']))
{
	
$p = $_POST['id'];	
	
$d = $_POST['d'];	

$pri = $_POST['p'];		

$c = $_POST['cat'];		


	if($c == 'Food_products')
	{

	$query = "UPDATE Food_products SET Description = '$d' WHERE Product_id = '$p'";
	$query2 = "UPDATE Food_products SET Price = '$pri' WHERE Product_id = '$p'";

	$l = mysqli_query($db,$query);
	$l2 = mysqli_query($db,$query2);

	if($l)
	{
		if($l2)
		{
			echo "Successfully Update item Details........";
		}
	}
	else
	{
			echo "Failed to Update item Details........";
	}

	}
	elseif($c == 'Other products')
	{

	$query = "UPDATE Other_products SET Description = '$d' WHERE Product_id = '$p'";
	$query2 = "UPDATE Other_products SET Price = '$pri' WHERE Product_id = '$p'";

	$l = mysqli_query($query, $db);
	$l2 = mysqli_query($query2, $db);

	if($l)
	{
		if($l2)
		{
			echo "<h2>Successfully Update item Details........</h2>";
		}
	}
	else
	{
			echo "<h2>Failed to Update item Details........</h2>";
	}


	}
	else
	{

	}



mysqli_close($db);


}

?>