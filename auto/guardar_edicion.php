<?php
include("../conexion.php");

$id = $_POST["id"];
$sap = $_POST["sap"];
$codauto = $_POST["codauto"];
$marca = $_POST["marca"];
$descrip = $_POST["descrip"];

$query = "UPDATE auto SET sap = '$sap', codauto = '$codauto', marca = '$marca', descrip = '$descrip' WHERE id = '$id'";
$result = $conn->query($query);

if ($result === TRUE) {
    echo "Registro actualizado correctamente";
} else {
    echo "Error al actualizar el registro: " . $conn->$error;
}

$conn->close();
?>
