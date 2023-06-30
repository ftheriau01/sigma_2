<?php
include("../conexion.php");

$query = "SELECT * FROM auto";
$result = $conn->query($query);

$data = array(); // Array para almacenar los registros

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row; // Agregar cada registro al array
    }
}

// Generar la respuesta JSON
$response = array(
    "data" => $data // Utilizar el array de registros como valor de la propiedad "data"
);

// Enviar la respuesta JSON al cliente
header("Content-Type: application/json");
echo json_encode($response);

$conn->close();
?>
