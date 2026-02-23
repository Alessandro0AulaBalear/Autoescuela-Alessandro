<?php
include 'db.php'; // Conexión a la base de datos

// --------------------
// 1️⃣ Borrar vehículo
// --------------------
if(isset($_GET['borrar'])) {
    $id = $_GET['borrar'];
    $conn->query("UPDATE vehiculos SET borrado=1 WHERE id='$id'");
    header("Location: vehiculos.php");
    exit;
}

// --------------------
// 2️⃣ Modificar vehículo
// --------------------
if(isset($_POST['modificar'])) {
    $id = $_POST['id'];
    $matricula = $_POST['matricula'];
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];

    $conn->query("UPDATE vehiculos SET 
                    matricula='$matricula', 
                    marca='$marca', 
                    modelo='$modelo' 
                  WHERE id='$id'");
    header("Location: vehiculos.php");
    exit;
}

// --------------------
// 3️⃣ Crear nuevo vehículo
// --------------------
if(isset($_POST['guardar'])) {
    $matricula = $_POST['matricula'];
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];

    $conn->query("INSERT INTO vehiculos (matricula, marca, modelo) 
                  VALUES ('$matricula', '$marca', '$modelo')");
    header("Location: vehiculos.php");
    exit;
}

// --------------------
// 4️⃣ Cargar datos para editar
// --------------------
$editar = null;
if(isset($_GET['editar'])) {
    $id = $_GET['editar'];
    $res = $conn->query("SELECT * FROM vehiculos WHERE id='$id'");
    $editar = $res->fetch_assoc();
}

// --------------------
// 5️⃣ Obtener todos los vehículos activos
// --------------------
$result = $conn->query("SELECT * FROM vehiculos WHERE borrado=0");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Vehículos - Autoescuela</title>
</head>
<body>
    <h1>Vehículos</h1>
    <a href="index.php">Volver al menú</a>

    <!-- Formulario Crear/Modificar -->
    <h2><?php echo $editar ? "Modificar vehículo" : "Crear nuevo vehículo"; ?></h2>
    <form method="POST" action="">
        <input type="hidden" name="id" value="<?php echo $editar ? $editar['id'] : ''; ?>">
        <label>Matrícula:</label> 
        <input type="text" name="matricula" value="<?php echo $editar ? $editar['matricula'] : ''; ?>" required><br>
        <label>Marca:</label> 
        <input type="text" name="marca" value="<?php echo $editar ? $editar['marca'] : ''; ?>" required><br>
        <label>Modelo:</label> 
        <input type="text" name="modelo" value="<?php echo $editar ? $editar['modelo'] : ''; ?>" required><br>
        <input type="submit" name="<?php echo $editar ? 'modificar' : 'guardar'; ?>" value="<?php echo $editar ? 'Modificar' : 'Guardar'; ?>">
    </form>

    <!-- Listado de vehículos -->
    <h2>Listado de vehículos</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Matrícula</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Acciones</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['matricula']}</td>
                        <td>{$row['marca']}</td>
                        <td>{$row['modelo']}</td>
                        <td>
                            <a href='vehiculos.php?editar={$row['id']}'>Modificar</a> | 
                            <a href='vehiculos.php?borrar={$row['id']}' onclick=\"return confirm('¿Seguro que quieres borrar este vehículo?')\">Borrar</a>
                        </td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No hay vehículos</td></tr>";
        }
        ?>
    </table>
</body>
</html>
