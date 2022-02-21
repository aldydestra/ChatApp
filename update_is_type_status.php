<?php

// proses update is_type_status pada chat

include('database_connection.php');

session_start();

$query = "
UPDATE detail_login 
SET is_type = '".$_POST["is_type"]."' 
WHERE login_details_id = '".$_SESSION["login_details_id"]."'
";

$statement = $connect->prepare($query);

$statement->execute();

?>