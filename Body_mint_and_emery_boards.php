<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "mystyle.css">
</head>
<body>
<?php

include 'Connection.php';

$result = mysqli_query($db,"SELECT * FROM Other_products where ProductType='Body_mint_and_emery_boards'");

echo "<h1 class = 'f'>Body_mint_and_emery_boards</h1><hr>";

echo "<table cellspacing = 10 cellpadding = 10 style='font-family:Futura Lt BT; font-weight:400;'> <tr>";

$c = 0;

while($row = mysqli_fetch_array($result))
{	
$c++;	

echo "<td class = 'imgbg'>  
<a href ='DisplayProduct.php?p=$row[1]&p2=$row[0]&p3=$row[2]'><img src ='".$row['Imagepath']."' height = 200 width = 180> </a><br> <font style = 'font-family:Rupee Foradian'> $ </font>".$row['Price']."<br>".$row['Description'];

if($c == 4)
{
echo "<tr>";
}

if($c >= 4)
{
$c = 0;
}
}


echo "</td></tr></table>";


mysqli_close($db);

?>


</body>
</html>