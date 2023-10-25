<?php

$dbhost = "localhost";
$dbuser = "id21438956_judito";
$dbpass = "Jeketi_48";
$dbname = "id21438956_twit";
global $con;
if(!$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname))
{

	die("failed to connect!");
}
