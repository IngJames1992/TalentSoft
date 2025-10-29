<?php
include("db.php");

// Verificar si se pasó un ID válido
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Obtener datos del alumno
    $sql = "SELECT * FROM alumnos WHERE id = '$id'";
    $resultado = mysqli_query($conexion, $sql);
    $alumno = mysqli_fetch_assoc($resultado);
    if (!$alumno) {
        echo "Alumno no encontrado.";
        exit;
    }
} else {
    echo "ID no proporcionado.";
    exit;
}
?>

<div class="modal fade" id="editarAlumno" tabindex="-1" role="dialog" aria-labelledby="editarAlumnoLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="editarAlumnoLabel">Editar Alumno</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">

                <form id="editarAlumnoForm">

                    <!-- Campos editables -->
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="tipo_doc">Tipo Documento</label>
                                <select class="form-control" id="tipo_doc" name="tipo_doc" required>
                                    <option value="NUIP" <?= $alumno['tipo_doc'] === 'NUIP' ? 'selected' : '' ?>>NUIP</option>
                                    <option value="TI" <?= $alumno['tipo_doc'] === 'TI' ? 'selected' : '' ?>>TI</option>
                                    <option value="CC" <?= $alumno['tipo_doc'] === 'CC' ? 'selected' : '' ?>>CC</option>
                                    <option value="CE" <?= $alumno['tipo_doc'] === 'CE' ? 'selected' : '' ?>>CE</option>
                                    <option value="PPT" <?= $alumno['tipo_doc'] === 'PPT' ? 'selected' : '' ?>>PPT</option>
                                    <option value="PEP" <?= $alumno['tipo_doc'] === 'PEP' ? 'selected' : '' ?>>PEP</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="birthdate">Fecha de Nacimiento</label>
                                <input type="date" name="birthdate" id="birthdate" class="form-control" value="<?= $alumno['birthdate'] ?>" required>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <!-- Departamento y Fecha de Expedición -->
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="dpto_exp">Dpto. Expedición</label>
                                <select name="dpto_exp" id="dpto_exp" class="form-control" required>
                                    <option value="">Selecciona una opción</option>
                                    <?php
                                    $sqlDpto = "SELECT * FROM departamentos ORDER BY nombre ASC";
                                    $resultDpto = mysqli_query($conexion, $sqlDpto);
                                    while ($dpto = mysqli_fetch_array($resultDpto)) {
                                        $selected = ($alumno['dpto_exp'] === $dpto['nombre']) ? 'selected' : '';
                                        echo "<option value='{$dpto['nombre']}' $selected>{$dpto['nombre']}</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="fecha_exp">Fecha de Expedición</label>
                                <input type="date" name="fecha_exp" id="fecha_exp" class="form-control" value="<?= $alumno['fecha_exp'] ?>" required>
                            </div>
                        </div>
                    </div>

                    <!-- Más campos similares a los requeridos... -->
                    <!-- Puedes replicar esta estructura para los demás campos -->

                    <input type="hidden" name="accion" value="editar_alumno">
                    <input type="hidden" name="id" value="<?= $alumno['id'] ?>">
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="guardarEdicion">Guardar Cambios</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#editarAlumnoForm').submit(function (e) {
            e.preventDefault();
            var formData = $(this).serialize();
            $.ajax({
                url: '../includes/functions.php',
                type: 'POST',
                data: formData,
                dataType: 'json',
                success: function (response) {
                    if (response.status === 'success') {
                        alert('Cambios guardados exitosamente.');
                        window.location = "alumnos.php";
                    } else {
                        alert('Error: ' + response.message);
                    }
                },
                error: function (xhr, status, error) {
                    alert('Error inesperado.');
                }
            });
        });
    });
</script>