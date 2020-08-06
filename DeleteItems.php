<?php
session_start();
if(!isset($_SESSION['Admin']))
{

echo "<h2>Please Login First....</h2>";

}

else
{

?>

<html> 
<head>
<title>Delete Product</title>
<link rel = "stylesheet" type = "text/css" href = "menu.css">
<link rel = "stylesheet" type = "text/css" href = "mystyle.css">
</head>
<body>

<h1 align = center class = "f"> Delete Product </h1><hr> 
<form method="post" action="<?php $_PHP_SELF ?>"> 
<table  border="0" cellpadding="9" cellspacing="9">
  <tr>
    <td>Category :</td>
    <td>
<input type="radio" name="cat" value="Food products" >        
Food products 
 &nbsp;&nbsp;  &nbsp;
        <input type="radio" name="cat" value="Other products" required>
        Other products </td>
	<td>Product Type :</td>
    <td><select name="menu1" required>
   <option value = ""> ------------------------Select------------------------</option>
      <optgroup name = "Food_products" label = "Food products">
      <option> Coffee</option>
      <option> Tea </option>
      <option> Macadamia nuts</option>
      <option> Pan cakes</option>
      <option> Pancake syrups</option>
        <option> By the case</option>
      </optgroup>
      <optgroup name = "Other_products" label = "Other products">
      <option> Bath and body products</option>
      <option> Natural health</option>
      <option> A little aloha</option>
      <option> Music video</option>
      <option> Oils</option>
      <option> Body_mint_and_emery_boards</option>
      <option> Lip_balm_and_bath_crystals</option>
      </optgroup>
    </select> </td>
	<td>Brand : </td>
	<td>
	</td>
  <div style = "visibility:hidden;"><input type = "text" name = "lable" id = "path"></div>	<td><input name="submit" type = "submit"  name = "submit" value = "Display" class="d"> </td>
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

$b = $_POST['brands'];

if($cate == 'Food_products')
{
	$result = mysqli_query($db,"SELECT * FROM Food_products where ProductType = '$m' and Brand = '$b'");
}

else
{
	$result = mysqli_query($db,"SELECT * FROM Other_products where ProductType = '$m' and Brand = '$b'");
}

echo "<form action = 'Delete.php' method = 'post'>";

echo "<table border = 0 cellspacing = 20 cellpadding = 5> <tr align = center  style = 'background-color:#e8e9e7;'>";

echo " <div style = 'visibility:hidden;'><input type = 'text' name = 'category' value = '".$cate."'></div>";
echo "<td> <strong> &nbsp; </td>";
echo "<td> <strong> Product Id </td> ";
echo "<td> <strong>Product Image </td>";
echo "<td> <strong>Product Brand </td>";
echo "<td> <strong>Description </td>";
echo "<td> <strong>Price </td><tr>";

while($row = mysqli_fetch_array($result))
{

	echo "<td> <input type  = 'radio' name = 'pid' value = '".$row['Product_id']."'  required>";
	echo "<td> <input type = 'text' value = '".$row['Product_id']."' readonly size = 1>";
	echo "<td> <img src = '".$row['Imagepath']."' height = 200 width = 200>";
	echo "<td> <input type = 'text' value = '".$row['Brand']."'  readonly>";
	echo "<td> <input type = 'text' name = 'Desc' value = '".$row['Description']."' size = 40  readonly>";
	echo "<td style = 'font-family:Rupee Foradian'>`&nbsp;<input type = 'text' name = 'price' value = '".$row['Price']."' size = 5  readonly>";
	echo "<td> <input type = 'submit'  class = 'd' value = 'Delete'> </td>";
	echo "<tr>";
}

echo "</td></tr> </table>";

echo "</form>";


mysqli_close($db);
}
?>