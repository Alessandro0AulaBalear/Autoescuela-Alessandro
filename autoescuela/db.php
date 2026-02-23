<?php
$host = 'localhost';      // Servidor de la base de datos
$user = 'root';           // Usuario de MySQL
$password = '';           // Contraseña (si no tienes deja vacío)
$db = 'autoescuela';      // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($host, $user, $password, $db);

// Comprobar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
