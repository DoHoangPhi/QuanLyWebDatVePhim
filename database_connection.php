<?php 

//database_connection.php

$connect = new PDO("mysql:host=localhost;dbname=moviebook", "root", "");
$connect->query('set names utf8');
?>