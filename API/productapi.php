<?php
require "connection.php";
// Retrieve all records from a table
$sql = "SELECT * FROM products WHERE 1";
//retrieve single record from a table
if(isset($_GET['id'])){
$sql .= " AND id=".$_GET['id']."";
}

$result = $conn->query($sql);
$data = array();
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $data[] = $row;
  }
}
echo json_encode($data);

// Add a new record to a table
// $name = $_POST['name'];
// $email = $_POST['email'];
// $sql = "INSERT INTO mytable (name, email) VALUES ('$name', '$email')";
// $conn->query($sql);
// echo "Record added successfully";

