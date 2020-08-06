<?php
session_start();
if(!isset($_SESSION['Admin']))
{

echo "<h2>Please Login First.....</h2>";

}

else
{

?>

<html> 
<head>
<title>Update Product</title>

<link rel = "stylesheet" type = "text/css" href = "menu.css">
<link rel = "stylesheet" type = "text/css" href = "mystyle.css">
</head>
<body>
 <h1 align = center class = "f"> Update Product </h1><hr> 

<form method="post" action="<?php $_PHP_SELF ?>"> 
<table  border="0" cellpadding="9" cellspacing="9">
  <tr>
    <td>Category :</td>
    <td>
<input type="radio" name="cat" value="Food_products" >        
Food_products
 &nbsp;&nbsp;  &nbsp;
        <input type="radio" name="cat" value="Other_products" required>
        Other_products</td>
	<td>Product Type :</td>
    <td><select name="menu1" required>
      <option value = ""> ------------------------Select------------------------</option>
      <optgroup name = "Food_products" label = "Food_products">
      <option> Coffee </option>
	<option>Tea </option>
	<option>Macadamia Nuts </option>
	<option>Pan cakes </option>
	<option>Pancake syrups </option>
	<option>By the case </option>
      </optgroup>
      <optgroup name = "Other_products" label = "Other_products">
      <option>Bath and body products</option>
      <option>Natural health</option>
      <option>A little aloha</option>
      <option>Music video</option>
      <option> Body_mint_and_emery_boards</option>
      <option> Lip_balm_and_bath_crystals</option>
      </optgroup>
    </select> </td>
	<td><input name="submit" type = "submit"  name = "submit" value = "Display" class="d"> </td>
  </tr> 
  </table>
</form>
</body>
</html>

<?php

}

?>

<?php

include 'Connection.php';

if(isset($_POST['submit']))
{

$cate = $_POST['cat'];

$m = $_POST['menu1'];


if($cate == 'Food_products')
{
	$result = mysqli_query($db,"SELECT * FROM Food_products where ProductType = '$m' ");
}

else
{
	$result = mysqli_query($db,"SELECT * FROM Other_products where ProductType = '$m' ");
}



echo "<table cellspacing = 20 cellpadding = 5> <tr align = center>";

$count = 0;

while($row = mysqli_fetch_array($result))
{
	$count++;
	$id = $row[0];

	echo "<td style = 'background-color:#e8e9e7;'><a href = 'UpdateItemsDetails.php?i=$id&c=$cate'> <img src = '".$row[5]."' height = 307 width = 230> </a>";
	
	if($count == 5)
	{
		echo "<tr>";
	}
	if($count > 5)
	{
		$count = 0;
	}
	

}

echo "</tr> </table>";


mysqli_close($db);

}

?>