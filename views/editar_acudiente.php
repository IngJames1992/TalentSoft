<div class="modal fade" id="editar<?php echo $fila['documento']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Editar Acudiente</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">

                <form id="editForm<?php echo $fila['documento']; ?>" method="POST">

                <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="documento" class="form-label">Identificación</label>
                                <input type="text" id="documento" name="documento" class="form-control" value="<?php echo $fila['documento']; ?>" required>
                            </div>
                        </div>



                        <div class="col-sm-6">
                            <div class="mb-3">
                            <label for="tipo_doc">Tipo Documento</label>
                                <select class="form-control" id="exampleSelect1" name="tipo_doc" value="<?php echo $fila['tipo_doc']; ?>">
                                    <option value="CC">CC</option>
                                    <option value="CE">CE</option>
                                    <option value="PPT">PPT</option>
                                    <option value="PEP">PEP</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" name="nombre" id="nombre" class="form-control" value="<?php echo $fila['nombre']; ?>" required>

                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Apellidos</label><br>
                                <input type="text" name="apellido" id="apellido" class="form-control" value="<?php echo $fila['apellido']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Teléfono</label><br>
                                <input type="tel" name="telefono" id="telefono" class="form-control" value="<?php echo $fila['telefono']; ?>" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Correo</label>
                                <input type="email" id="correo" name="correo" class="form-control" value="<?php echo $fila['correo']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Dirección</label><br>
                                <input type="text" name="direccion" id="direccion" class="form-control" value="<?php echo $fila['direccion']; ?>" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Barrio</label><br>
                                    <select name="barrio" id="barrio" class="form-control" value="<?php echo $fila['barrio']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sql = "SELECT * FROM barrios ";
                                        $resultado = mysqli_query($conexion, $sql);
                                        while ($consulta = mysqli_fetch_array($resultado)) {
                                            echo '<option value="' . $consulta['nombre'] . '">' . $consulta['nombre'] . '</option>';
                                        }

                                        ?>
                                    </select>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="username">Rol de Usuario</label><br>
                        <select name="id_rol" id="id_rol" class="form-control" required>

                            <option <?php echo $fila['id_rol'] === '1' ? "selected='selected' " : "" ?> value="1">Administrador</option>
                            <option <?php echo $fila['id_rol'] === '2' ? "selected='selected' " : "" ?> value="2">Profesor</option>
                            <option <?php echo $fila['id_rol'] === '3' ? "selected='selected' " : "" ?> value="3">Alumno</option>
                        </select>
                    </div>



                    <br>

                    <input type="hidden" name="accion" value="editar_acudiente">
                    <input type="hidden" name="id" value="<?php echo $fila['documento']; ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="editForm(<?php echo $fila['documento']; ?>)">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>

            </div>

            </form>
        </div>
    </div>
</div>
<script>
    function editForm(id) {
        var datosFormulario = $("#editForm" + id).serialize();

        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.reload('acudientes.php');
                    }, 2000);
                } else {
                    alert("Ha ocurrido un error al actualizar el registro");
                }
            },
            error: function() {
                alert("Error de comunicacion con el servidor");
            }
        });
    }
</script>