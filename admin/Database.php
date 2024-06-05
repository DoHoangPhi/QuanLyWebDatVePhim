<?php
$servername='localhost';
$username='root';
$password='';
$dbname = "moviebook";
$conn=mysqli_connect($servername,$username,$password,"$dbname");
$conn->query('set names utf8');
if(!$conn){
   die('Could not Connect My Sql:' .mysqli_error());
}
?>