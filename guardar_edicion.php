<?php
include("conexion.php");

$id = $_POST["id"];
$codSigma = $_POST["codSigma"];
$codItem = $_POST["codItem"];
$marca = $_POST["marca"];
$departamento = $_POST["departamento"];
$descripcion = $_POST["descripcion"];

$query = "UPDATE productos SET cod_sigma = '$codSigma', cod_item = '$codItem', marca = '$marca', departamento = '$departamento', descripcion = '$descripcion' WHERE id = '$id'";
$result = $conn->query($query);

if ($result === TRUE) {
    echo "Registro actualizado correctamente";
} else {
    echo "Error al actualizar el registro: " . $conn->$error;
}

$conn->close();
?>
