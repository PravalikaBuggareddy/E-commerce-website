<html>
<head>
<title>SIP Hawaii...</title>
<link rel = "stylesheet" type = "text/css" href = "menu.css">
<link rel = "stylesheet" type = "text/css" href = "dropdownmenu2.css">
<link rel = "stylesheet" type = "text/css" href = "Headerbtn.css">
</head>
<body alink = blue vlink = red>
<?php
// $p = $_GET['remark'];

if(isset($_SESSION['name']))
{
	$p = $_SESSION['name'];
}
?>

        <div align="center" style="top:0px">
          <table width="1330" bgcolor="#FFFFFF">
            <tr>
			 <td><img src="imagesip1.jpg" alt="SIP Hawaii">
			</td>
            </tr>
            <tr>
              <td>
			  			
			  <table width="1316" align="center" class = "t">
                <tr>

                <td style = "text-align:center"> <button class = "btn"> Home </button></td>
            	 	
					<td style = "text-align:center" class = "menu"><div class="dropdown2">Category 
				  <div class="dropdown-content2">
		    		<a href="Food_products.php" target= "myframe">Food_Products</a>
					<a href="Other_products.php" target= "myframe">Other_products</a>
				  </div> </div></td>
<td style = "text-align:center"><a href = "ContactUs.php" target = "myframe"><button class = "btn">Contact us</button></a></td>
				  <td style = "text-align:center"class = "btn"><div align="center"><div class="dropdown2"> <?php echo "$p" ?>
				  <div class="dropdown-content2">
		    		<a href="Myprofile.php" target = "myframe">My Profile</a>
					<a href="Changepassword.php" target = "myframe">Change Password</a>
					<a href="MyOrder.php" target = "myframe">My Order</a>
					<a href="index.php?logout">Logout</a>
				  </div> </div></td>
                  <td style = "text-align:center"> <a href="Cart.php" target = "myframe"><button class = "btn">Cart</button></td>
                </tr>
						

              </table></td>
            </tr>
          </table>
		  
</div>
         	
</body>
</html>