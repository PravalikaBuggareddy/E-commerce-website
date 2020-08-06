<?php
session_start();
if(!isset($_SESSION['Admin']))
{

echo "<h2> Please Login First..... </h2>";

}
else
{

?>

<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "menu.css">
<link rel = "stylesheet" type = "text/css" href = "mystyle.css">
<script language = "javascript">
function seeList(form) 
{
	var result = ""
	for (var i = 0; i < form.menu1.length; i++) 
	{
		if (form.menu1.options[i].selected) 
		{
			result += "\n " + form.menu1.options[i].label
		}
	}
			document.getElementById("optionlable").value = result;
}

</script>
</head>
<body>

<h1 align = center class = "f"> Add Products </h1>
<hr>
<form  method="post" action="<?php $_PHP_SELF ?>" enctype = "multipart/form-data"> 
<table width="450" cellpadding="9" cellspacing="9">
  <tr>
    <td>Category</td>
    <td>
<input type="radio" name="cat" value="Food_products" >        
Food_products 
 &nbsp;&nbsp;  &nbsp;
        <input type="radio" name="cat" value="Other_products" required>
        Other_products </td>
  </tr>

  
  <tr>
    <td>Product Type</td>
    <td>

<select name="menu1" id = "m" class = "in40">
<option> ------------------------Select------------------------</option>
<optgroup name = "Food_products" label = "Food_products">
<option  label = "Coffee" > Coffee</option>
<option label = "Tea" > Tea</option>
<option label = "Macadamia nuts" > Macadamia nuts</option>
<option label = "Pan cakes" > Pan cakes</option>
<option label = "Pancake syrups"> Pancake syrups</option>
<option label ="By the case">By the case</option>
</optgroup>
<optgroup name = "Other_products" label = "Other_products">
<option label = "Bath and body products" > Bath and body products</option>
<option value="Collection/Other_products/Natural health/"> Natural health</option>
<option label = "A little aloha" > A little aloha</option>
<option label = "Music video" > Music video</option>
<option label = "Body_mint_and_emery_boards" >Body mint and emery boards</option>
<option label = "Lip_balm_and_bath_crystals" > Lip balm and bath crystals</option>
</optgroup>
    </select>  </tr>  <tr>
    <td>Description</td>
    <td>     
     
          <textarea name="Description" rows="5" cols="35" required ></textarea>     
          <div style = "visibility:hidden;"><input type = "text" name = "lable" id = "optionlable"></div></td>
  </tr>
  <tr>
    <td>Price</td>
    <td style = "font-family:Rupee Foradian">  
      <input type="text" name="price" size = 16 required>        </td>
  </tr>
  <tr>
    <td>Upload Image </td>
    <td> &nbsp;  &nbsp;<input type = "file" name = "FileToUpload" required>     </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input name="submit" type = "submit" name = "submit" value = "Add Product" class="button3" onclick = "seeList(this.form) ">
        <input name="clear" type = "reset" value = "Clear" class="button4">      </td>
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
	
$c = $_POST['cat'];

$b = $_POST['brands'];

$path = $_POST['menu1'];

$desc = $_POST['Description'];

$p = $_POST['price'];

$lab =  trim($_POST['lable']);

$tf = $path.basename($_FILES['FileToUpload']['name']);

$np = "/project/".$tf;

if($c == 'Food_products')
{
	mysqli_query($db,"INSERT INTO Food_products(ProductType, Brand, Price, Imagepath, Description) VALUES('".$lab."', '".$b."', '".$p."', '".$np."', '".$desc."')") or die("Failed to Insert Data in Database");
}

elseif($c == 'Other_products')
{
	mysqli_query($db,"INSERT INTO Other_products(ProductType, Brand, Price, Imagepath, Description) VALUES('".$lab."', '".$b."', '".$p."', '".$np."', '".$desc."')") or die("Failed to Insert Data in Database");
}
else
{
	echo "Please Select Category...";
}

$flag = "";

if($_FILES['FileToUpload']['name'] != "" )
{
$fileType = pathinfo($tf,PATHINFO_EXTENSION);

$check = getimagesize($_FILES['FileToUpload']['tmp_name']);	

if($check == true)
{
	$flag = 1;
}	

else
{
	echo "<h3> File is not an Image</h3>";
	$flag = 0;

}

if($fileType != "jpg" && $fileType != "png" && $fileType != "jpeg" && $fileType != "gif")
{

echo "<h3>This Type of File is not allowed</h3>";
$flag = 0;

}
else
{

$flag = 1;

}

if(file_exists($tf))
{

echo "<h3>File Already Exists.....!!!</h3>";
$flag = 0;
}
else
{
$flag = 1;
}

if($flag == 1)
{
move_uploaded_file($_FILES['FileToUpload']['tmp_name'], $tf) or die( "Could not Move file!");

echo "<h3>Successfullly Product Added....!!!!</h3>";
}
else
{

echo "</br> <h3>Failed to Upload file....!!!!</h3>";

}

}

else
{
echo "<h3> No file Selected....<h3>";

}

mysqli_close($db);
}
?>
