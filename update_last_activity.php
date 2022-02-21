<?php

//proses update last_activity

include('database_connection.php');

session_start();

$query = "
UPDATE detail_login 
SET last_activity = now() 
WHERE login_details_id = '".$_SESSION["login_details_id"]."'
";

$statement = $connect->prepare($query);

$statement->execute();

?>

