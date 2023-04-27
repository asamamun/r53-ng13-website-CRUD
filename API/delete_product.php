<?php
require "connection.php";
if(isset($_GET['id'])){
$id = $conn->escape_string($_GET['id']);
$sql = "delete from products where id='$id' limit 1";
$conn->query($sql);
//affected_rows returns -1 on error
if($conn->affected_rows != "-1"){
    $product = [
		'id' => $id,
		'action' => "Deleted"];		
}
else{
    $product = [
		'id' => null,
		'action' => "Error"
    ];
}
echo json_encode($product);
}