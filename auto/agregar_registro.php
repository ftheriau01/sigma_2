<?php
include("../conexion.php");

$sap = $_POST["sap"];
$codauto = $_POST["codauto"];
$marca = $_POST["marca"];
$descrip = $_POST["descrip"];

$query = "INSERT INTO auto (sap, codauto, marca, descrip) VALUES ('$sap', '$codauto', '$marca', '$descrip')";
$result = $conn->query($query);

if ($result === TRUE) {
    echo "Registro agregado correctamente";
} else {
    echo "Error al agregar el registro: " . $conn->$error;
}

$conn->close();
?>
