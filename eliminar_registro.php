<?php
    include("conexion.php");

    $id = $_POST["id"];

    $query = "DELETE FROM productos WHERE id = '$id'";
    $conn->query($query);

    $conn->close();
?>
