<?php
// Part A: Create Array
$associativeArray = [
    "name" => "Luke",
    "age" => 23,
    "city" => "New York",
    "occupation" => "Student"
];

// Part B: Loop through the array and echo out a string that contains each key and value
foreach ($associativeArray as $key => $value) {
    echo "The key is '$key' and the value is '$value'.<br>";
}

// Part C: Create a function with a set return type, an optional parameter, and a typed parameter
function calculateArea(float $length, float $width = 1.0): float {
    return $length * $width;
}

// Call the function with correct values
$area = calculateArea(5.0, 3.0);
echo "The area of the rectangle is: $area";
?>
