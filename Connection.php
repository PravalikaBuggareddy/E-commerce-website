<?php

$hostname = "localhost";

$user = "root";

$password = "";

$database = "new_data";

//$db = mysqli_connect($hostname,$user,$password, "new_db", "3308") or die("Connection Failed........!!!");

$db = mysqli_connect("localhost","root","","new_data", "3308") or die("Error " . mysqli_error($link));

//mysqli_select_db($db,"new_db") or die("Database not selected....!!!");

?>