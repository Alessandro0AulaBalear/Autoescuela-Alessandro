<?php
include 'db.php'; // Conexión a la base de datos

// --------------------
// 1️⃣ Borrar profesor
// --------------------
if(isset($_GET['borrar'])) {
    $id = $_GET['borrar'];
    $conn->query("UPDATE profesores SET borrado=1 WHERE id='$id'");
    header("Location: profesores.php");
    exit;
}

// --------------------
// 2️⃣ Modificar profesor
// --------------------
if(isset($_POST['modificar'])) {
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $telefono = $_POST['telefono'];
    $email = $_POST['email'];

    $conn->query("UPDATE profesores SET 
                    nombre='$nombre', 
                    apellido='$apellido', 
                    telefono='$telefono', 
                    email='$email' 
                  WHERE id='$id'");
    header("Location: profesores.php");
    exit;
}

// --------------------
// 3️⃣ Crear nuevo profesor
// --------------------
if(isset($_POST['guardar'])) {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $telefono = $_POST['telefono'];
    $email = $_POST['email'];

    $conn->query("INSERT INTO profesores (nombre, apellido, telefono, email) 
                  VALUES ('$nombre', '$apellido', '$telefono', '$email')");
    header("Location: profesores.php");
    exit;
}

// --------------------
// 4️⃣ Cargar datos para editar
// --------------------
$editar = null;
if(isset($_GET['editar'])) {
    $id = $_GET['editar'];
    $res = $conn->query("SELECT * FROM profesores WHERE id='$id'");
    $editar = $res->fetch_assoc();
}

// --------------------
// 5️⃣ Obtener todos los profesores activos
// --------------------
$result = $conn->query("SELECT * FROM profesores WHERE borrado=0");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Profesores - Autoescuela</title>
</head>
<body>
    <h1>Profesores</h1>
    <a href="index.php">Volver al menú</a>

    <!-- Formulario Crear/Modificar -->
    <h2><?php echo $editar ? "Modificar profesor" : "Crear nuevo profesor"; ?></h2>
    <form method="POST" action="">
        <input type="hidden" name="id" value="<?php echo $editar ? $editar['id'] : ''; ?>">
        <label>Nombre:</label> 
        <input type="text" name="nombre" value="<?php echo $editar ? $editar['nombre'] : ''; ?>" required><br>
        <label>Apellido:</label> 
        <input type="text" name="apellido" value="<?php echo $editar ? $editar['apellido'] : ''; ?>" required><br>
        <label>Teléfono:</label> 
        <input type="text" name="telefono" value="<?php echo $editar ? $editar['telefono'] : ''; ?>"><br>
        <label>Email:</label> 
        <input type="email" name="email" value="<?php echo $editar ? $editar['email'] : ''; ?>"><br>
        <input type="submit" name="<?php echo $editar ? 'modificar' : 'guardar'; ?>" value="<?php echo $editar ? 'Modificar' : 'Guardar'; ?>">
    </form>

    <!-- Listado de profesores -->
    <h2>Listado de profesores</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Teléfono</th>
            <th>Email</th>
            <th>Acciones</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['nombre']}</td>
                        <td>{$row['apellido']}</td>
                        <td>{$row['telefono']}</td>
                        <td>{$row['email']}</td>
                        <td>
                            <a href='profesores.php?editar={$row['id']}'>Modificar</a> | 
                            <a href='profesores.php?borrar={$row['id']}' onclick=\"return confirm('¿Seguro que quieres borrar este profesor?')\">Borrar</a>
                        </td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='6'>No hay profesores</td></tr>";
        }
        ?>
    </table>
</body>
</html>
