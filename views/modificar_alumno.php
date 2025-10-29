<?php include "../includes/header.php"; ?>


<body id="page-top">

<?php
require_once("../includes/db.php"); // Conexión a la base de datos

// Definir los campos de la tabla globalmente
$fields = [
    "nombre", "apellido", "correo", "telefono", "curp", "tipo_doc", "birthdate",
    "dpto_nac", "ciu_nacimiento", "fecha_exp", "dpto_exp", "ciu_expedicion",
    "direccion", "barrio", "eps", "rh", "sexo", "sisben", "discapacidad",
    "c_discapacidad", "religion", "convive", "madre", "padre", "acudiente",
    "parentezco", "id_grado", "jornada"
];
// $fields es una lista de los nombres de las columnas en la tabla 'alumnos' para facilitar la manipulación de datos.


$alumnoEncontrado = false; // Bandera para indicar si el alumno fue encontrado
$error = ""; // Variable para almacenar errores y mostrarlos al usuario

// Consultar opciones dinámicas para listas desplegables en el formulario
$grados = mysqli_query($conexion, "SELECT id, descripcion AS nombre FROM grados"); // Consulta los grados
$departamentos = mysqli_query($conexion, "SELECT id, nombre AS nombre FROM departamentos"); // Consulta los departamentos
$barrios = mysqli_query($conexion, "SELECT id, nombre AS nombre FROM barrios"); // Consulta los barrios
$eps = mysqli_query($conexion, "SELECT codigo, descripcion AS nombre FROM eps"); // Consulta las EPS
$acudientes = mysqli_query($conexion, "SELECT documento, nombre AS nombre FROM acudientes"); // Consulta los acudientes

// Procesar el formulario de búsqueda
if (isset($_POST['buscar_alumno'])) { // Si se envía el formulario para buscar un alumno
    $curp = mysqli_real_escape_string($conexion, $_POST['curp']); // Escapar la entrada del usuario para evitar inyección SQL

    // Consulta para buscar un alumno por su CURP
    $query = "SELECT * FROM alumnos WHERE curp = '$curp'";
    $result = mysqli_query($conexion, $query); // Ejecutar la consulta

    if (mysqli_num_rows($result) == 1) { // Verifica si se encontró un único alumno
        $alumno = mysqli_fetch_assoc($result); // Obtener los datos del alumno
        $alumnoEncontrado = true; // Marca que el alumno fue encontrado
    } else {
        $error = "No se encontró ningún alumno con la identificación proporcionada."; // Mensaje de error si no se encuentra
    }
}

// Procesar la actualización de los datos
if (isset($_POST['update_alumno'])) { // Si se envía el formulario para actualizar un alumno
    $id = mysqli_real_escape_string($conexion, $_POST['id']); // Escapar el ID del alumno

    // Construir la consulta de actualización dinámicamente
    $updates = [];
    foreach ($fields as $field) { // Recorre cada campo definido
        $value = mysqli_real_escape_string($conexion, $_POST[$field]); // Escapa los valores del formulario
        $updates[] = "$field = '$value'"; // Genera un par clave-valor para la consulta SQL
    }

    // Construir la consulta SQL completa
    $query = "UPDATE alumnos SET " . implode(", ", $updates) . " WHERE id = $id";

    if (mysqli_query($conexion, $query)) { // Ejecuta la consulta
        header("Location: alumnos.php?msg=updated"); // Redirige al listado de alumnos con un mensaje de éxito
    } else {
        $error = "Error al actualizar los datos: " . mysqli_error($conexion); // Mensaje de error si algo falla
    }
}

$field_labels = [
    "c_discapacidad" => "Condición de Discapacidad",
    "convive" => "¿Cuantas personas Convive?",
    "ciu_expedicion" => "Ciudad de Expedición",
    "ciu_nacimiento" => "Ciudad de Nacimiento",
    // Agrega más campos según sea necesario
];

?>



<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar Alumno</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Modificar Alumno</h2>

        <!-- Mostrar mensajes de error si los hay -->
        <?php if ($error): ?>
            <div class="alert alert-danger">
                <?php echo $error; ?>
            </div>
        <?php endif; ?>

        <!-- Formulario de búsqueda -->
        <form action="" method="POST" class="mb-4">
            <div class="form-group">
                <label for="curp">Identificación del Alumno (CURP)</label>
                <input type="text" id="curp" name="curp" class="form-control" placeholder="Ingrese la identificación (CURP)" required>
            </div>
            <button type="submit" name="buscar_alumno" class="btn btn-primary">Buscar Alumno</button>
        </form>

        <!-- Formulario de edición -->
        <?php if ($alumnoEncontrado): ?>
            <form action="" method="POST">
                <input type="hidden" name="id" value="<?php echo $alumno['id']; ?>">

                <!-- Inicio del formulario en 3 columnas -->
                <div class="row">
                    <?php
                    // Contador para organizar los campos en filas
                    $counter = 0;

                    

                    foreach ($fields as $field):

                        
                        // Abrir nueva fila si se completa una
                        if ($counter % 3 == 0 && $counter > 0) {
                            echo '</div><div class="row">';
                        }
                    ?>
                        <div class="col-md-4">
                            <?php if ($field == 'tipo_doc'): ?>
                                <div class="form-group">
                                    <label for="tipo_doc">Tipo de Documento</label>
                                    <select id="tipo_doc" name="tipo_doc" class="form-control" required>
                                        <option value="TI" <?php echo $alumno['tipo_doc'] == 'TI' ? 'selected' : ''; ?>>TI</option>
                                        <option value="CC" <?php echo $alumno['tipo_doc'] == 'CC' ? 'selected' : ''; ?>>CC</option>
                                        <option value="CE" <?php echo $alumno['tipo_doc'] == 'CE' ? 'selected' : ''; ?>>CE</option>
                                        <option value="PPT" <?php echo $alumno['tipo_doc'] == 'PPT' ? 'selected' : ''; ?>>PPT</option>
                                        <option value="PEP" <?php echo $alumno['tipo_doc'] == 'PEP' ? 'selected' : ''; ?>>PEP</option>
                                    </select>
                                </div>
                            <?php elseif ($field == 'jornada'): ?>
                                <div class="form-group">
                                    <label for="jornada">Jornada</label>
                                    <select id="jornada" name="jornada" class="form-control" required>
                                        <option value="Mañana" <?php echo $alumno['jornada'] == 'Mañana' ? 'selected' : ''; ?>>Mañana</option>
                                        <option value="Tarde" <?php echo $alumno['jornada'] == 'Tarde' ? 'selected' : ''; ?>>Tarde</option>
                                    </select>
                                </div>
                            <?php elseif ($field == 'rh'): ?>
                                <div class="form-group">
                                    <label for="rh">RH</label>
                                    <select id="rh" name="rh" class="form-control" required>
                                        <option value="A+" <?php echo $alumno['rh'] == 'A+' ? 'selected' : ''; ?>>A+</option>
                                        <option value="A-" <?php echo $alumno['rh'] == 'A-' ? 'selected' : ''; ?>>A-</option>
                                        <option value="B+" <?php echo $alumno['rh'] == 'B+' ? 'selected' : ''; ?>>B+</option>
                                        <option value="B-" <?php echo $alumno['rh'] == 'B-' ? 'selected' : ''; ?>>B-</option>
                                        <option value="O+" <?php echo $alumno['rh'] == 'O+' ? 'selected' : ''; ?>>O+</option>
                                        <option value="O-" <?php echo $alumno['rh'] == 'O-' ? 'selected' : ''; ?>>O-</option>
                                        <option value="AB+" <?php echo $alumno['rh'] == 'AB+' ? 'selected' : ''; ?>>AB+</option>
                                        <option value="AB-" <?php echo $alumno['rh'] == 'AB-' ? 'selected' : ''; ?>>AB-</option>
                                    </select>
                                </div>

                    <?php elseif ($field == 'sexo'): ?>
                        <div class="form-group">
                            <label for="sexo">Sexo</label>
                            <select id="sexo" name="sexo" class="form-control" required>
                                <option value="Femenino" <?php echo $alumno['sexo'] == 'Femenino' ? 'selected' : ''; ?>>Femenino</option>
                                <option value="Masculino" <?php echo $alumno['sexo'] == 'Masculino' ? 'selected' : ''; ?>>Masculino</option>
                            </select>
                        </div>
                    <?php elseif ($field == 'discapacidad'): ?>
                        <div class="form-group">
                            <label for="discapacidad">Discapacidad</label>
                            <select id="discapacidad" name="discapacidad" class="form-control" required>
                                <option value="Si" <?php echo $alumno['discapacidad'] == 'Si' ? 'selected' : ''; ?>>Si</option>
                                <option value="No" <?php echo $alumno['discapacidad'] == 'No' ? 'selected' : ''; ?>>No</option>
                            </select>
                        </div>



                    <?php elseif ($field == 'parentezco'): ?>
                        <div class="form-group">
                            <label for="parentezco">Parentezco Acudiente</label>
                            <select id="parentezco" name="parentezco" class="form-control" required>
                                <option value="Madre" <?php echo $alumno['parentezco'] == 'Madre' ? 'selected' : ''; ?>>Madre</option>
                                <option value="Padre" <?php echo $alumno['parentezco'] == 'Padre' ? 'selected' : ''; ?>>Padre</option>
                                <option value="Hermano(a)" <?php echo $alumno['parentezco'] == 'Hermano(a)' ? 'selected' : ''; ?>>Hermano(a)</option>
                                <option value="Tio(a)" <?php echo $alumno['parentezco'] == 'Tio(a)' ? 'selected' : ''; ?>>Tio(a)</option>
                                <option value="Abuelo(a)" <?php echo $alumno['parentezco'] == 'Abuelo(a)' ? 'selected' : ''; ?>>Abuelo(a)</option>
                                <option value="Primo(a)" <?php echo $alumno['parentezco'] == 'Primo(a)' ? 'selected' : ''; ?>>Primo(a)</option>
                                <option value="Otro" <?php echo $alumno['parentezco'] == 'Otro' ? 'selected' : ''; ?>>Otro</option>
                            </select>
                        </div>

                    

                        <?php elseif ($field == 'birthdate' || $field == 'fecha_exp'): ?>
                            <!-- Comprobamos si el campo actual es 'birthdate' (fecha de nacimiento) o 'fecha_exp' (fecha de expedición) -->
                            <div class="form-group">
                                <!-- Etiqueta dinámica que transforma el nombre del campo a un formato más legible -->
                                <?php
                                // Personalizamos las etiquetas según el campo
                                $label = $field === 'birthdate' ? 'Fecha de cumpleaños' : 'Fecha de expedición';
                                echo ucfirst($label);
                                ?>
                                <!-- Campo de entrada de tipo 'date' para fechas -->
                                <input type="date" id="<?php echo $field; ?>" name="<?php echo $field; ?>" class="form-control" 
                                    value="<?php echo $alumno[$field]; ?>" required>
                                <!-- Usa la columna 'birthdate' o 'fecha_exp' de la base de datos para rellenar el valor -->
                            </div>


                    <?php elseif ($field == 'dpto_nac' || $field == 'dpto_exp'): ?>
                        <div class="form-group">
                            <label for="<?php echo $field; ?>">
                                Departamento de <?php echo $field == 'dpto_nac' ? 'Nacimiento' : 'Expedición'; ?>
                            </label>
                            <select id="<?php echo $field; ?>" name="<?php echo $field; ?>" class="form-control" required>
                                <?php
                                // Si `$departamentos` ya fue usado, necesitamos volver a ejecutar la consulta
                                if ($field == 'dpto_exp') {
                                    $departamentos = mysqli_query($conexion, "SELECT * FROM departamentos");
                                }
                                while ($row = mysqli_fetch_assoc($departamentos)): ?>
                                    <option value="<?php echo $row['id']; ?>"
                                        <?php echo $alumno[$field] == $row['id'] ? 'selected' : ''; ?>>
                                        <?php echo $row['nombre']; ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                        </div>

                    <?php elseif ($field == 'barrio'): ?>
                        <div class="form-group">
                            <label for="barrio">Barrio</label>
                            <select id="barrio" name="barrio" class="form-control" required>
                                <?php while ($row = mysqli_fetch_assoc($barrios)): ?>
                                    <option value="<?php echo $row['id']; ?>" <?php echo $alumno['barrio'] == $row['id'] ? 'selected' : ''; ?>>
                                        <?php echo $row['nombre']; ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                        </div>

                        <?php elseif ($field == 'eps'): ?>
                            <!-- Si el campo es 'eps' (identificador de la EPS - sistema de salud) -->
                            <div class="form-group">
                                <label for="eps">EPS</label>
                                <!-- Menú desplegable para seleccionar una EPS -->
                                <select id="eps" name="eps" class="form-control" required>
                                    <?php while ($row = mysqli_fetch_assoc($eps)): ?>
                                        <!-- Iteramos por los registros en la tabla de EPS -->
                                        <option value="<?php echo $row['codigo']; ?>"
                                            <?php echo $alumno['eps'] == $row['codigo'] ? 'selected' : ''; ?>>
                                            <?php echo $row['nombre']; ?>
                                            <!-- Mostramos el nombre de la EPS y seleccionamos la actual -->
                                        </option>
                                    <?php endwhile; ?>
                                </select>
                            </div>

                        <?php elseif ($field == 'madre' || $field == 'padre' || $field == 'acudiente'): ?>
                        <div class="form-group">
                            <label for="<?php echo $field; ?>"><?php echo ucfirst($field); ?></label>
                            <select id="<?php echo $field; ?>" name="<?php echo $field; ?>" class="form-control" required>
                                <?php
                                // Vuelve a ejecutar la consulta si el resultado ya fue consumido
                                if ($field != 'madre') {
                                    $acudientes = mysqli_query($conexion, "SELECT documento, nombre FROM acudientes");
                                }
                                while ($row = mysqli_fetch_assoc($acudientes)): ?>
                                    <option value="<?php echo $row['documento']; ?>"
                                        <?php echo $alumno[$field] == $row['documento'] ? 'selected' : ''; ?>>
                                        <?php echo $row['nombre']; ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                        </div>


                    <?php elseif ($field == 'id_grado'): ?>
                        <div class="form-group">
                            <label for="id_grado">Grado</label>
                            <select id="id_grado" name="id_grado" class="form-control" required>
                                <?php while ($row = mysqli_fetch_assoc($grados)): ?>
                                    <option value="<?php echo $row['id']; ?>" <?php echo $alumno['id_grado'] == $row['id'] ? 'selected' : ''; ?>>
                                        <?php echo $row['nombre']; ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                        </div>

                        

                        <?php else: ?>
                            <div class="form-group">
                                <label for="<?php echo $field; ?>">
                                    <?php echo isset($field_labels[$field]) ? $field_labels[$field] : ucfirst(str_replace('_', ' ', $field)); ?>
                                </label>
                                <input type="text" id="<?php echo $field; ?>" name="<?php echo $field; ?>" class="form-control" value="<?php echo $alumno[$field]; ?>" required>
                            </div>
                        <?php endif; ?>
                        </div>
                    <?php
                        $counter++;
                    endforeach;
                    ?>
                </div> <!-- Cierre de la última fila -->

                <!-- Botones de acción -->
                <button type="submit" name="update_alumno" class="btn btn-success mt-3">Guardar Cambios</button>
                <a href="alumnos.php" class="btn btn-secondary mt-3">Cancelar</a>
            </form>
        <?php endif; ?>
    </div>
</body>


<?php
include "../includes/footer.php";
?>

</html>

