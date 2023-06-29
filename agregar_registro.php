<?php
include("conexion.php");

$codSigma = $_POST["codSigma"];
$codItem = $_POST["codItem"];
$marca = $_POST["marca"];
$departamento = $_POST["departamento"];
$descripcion = $_POST["descripcion"];

$query = "INSERT INTO productos (cod_sigma, cod_item, marca, departamento, descripcion) VALUES ('$codSigma', '$codItem', '$marca', '$departamento', '$descripcion')";
$result = $conn->query($query);

if ($result === TRUE) {
    echo "Registro agregado correctamente";
} else {
    echo "Error al agregar el registro: " . $conn->$error;
}

$conn->close();
?>
