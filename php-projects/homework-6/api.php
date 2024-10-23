<?php
// Create another associative array
$apiArray = [
    "product" => "Laptop",
    "price" => 1500,
    "brand" => "BrandName"
];

// Echo the array as JSON data
header('Content-Type: application/json');
echo json_encode($apiArray);
?>
