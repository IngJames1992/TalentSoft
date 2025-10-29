<div class="modal fade" id="acudiente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Agregar nuevo acudiente</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">

                <form id="alumForm">

                <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="identificacion" class="form-label">Identificación</label>
                                <input type="text" id="identificacion" name="documento" class="form-control" required>
                                <label for="ciu_exp" class="form-label">Ciudad Expedición</label>
                                <input type="text" id="ciu_exp" name="ciu_exp" class="form-control" required>
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" id="usuario" name="nombre" class="form-control" required>
                                <label for="telefono" class="form-label">Teléfono</label>
                                <input type="tel" id="telefono" name="telefono" class="form-control" required>
                                <label for="estrato">Estrato</label><br>
                                <input type="number" name="estrato" id="estrato" class="form-control" required>

                            </div>
                        </div>
                

                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="tipo_doc">Tipo Documento</label>
                                <select class="form-control" id="exampleSelect1" name="tipo_doc">
                                <?php echo "<option>Seleccione una opción</option>"; ?>
                                    <option value="TI">TI</option>
                                    <option value="CC">CC</option>
                                    <option value="CE">CE</option>
                                    <option value="PPT">PPT</option>
                                    <option value="PEP">PEP</option>
                                </select>
                                <label for="nombre" class="form-label">Correo</label>
                                <input type="email" id="correo" name="correo" class="form-control" required>
                                <label for="nombre" class="form-label">Apellido</label>
                                <input type="text" id="usuario" name="apellido" class="form-control" required>
                                <label for="direccion">Dirección</label><br>
                                <input type="text" name="direccion" id="direccion" class="form-control" required>
                                <label for="password">Barrio</label><br>
                                    <select name="barrio" id="barrio" class="form-control" required>
                                        <option value="">Selecciona una opción</option>
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

                    <div class="row">
                        
                        <div class="col-sm-6">
                            <div class="mb-3">
                                
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="nivel_e">Nivel Educativo</label>
                                <select class="form-control" id="exampleSelect1" name="nivel_e">
                                <?php echo "<option>Seleccione una opción</option>"; ?>
                                <option value="Básica Primaria">Básica Primaria</option>
                                <option value="Básica Secundaria">Básica Secundaria</option>
                                <option value="Técnico">Técnico</option>
                                <option value="Tecnológico">Tecnológico</option>
                                <option value="Profesional">Profesional</option>
                                <option value="Posgrado">Posgrado</option>
                                <option value="Ninguno">Ninguno</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="m_contacto">Medio de Contacto</label>
                                <select class="form-control" id="exampleSelect1" name="m_contacto">
                                <?php echo "<option>Seleccione una opción</option>"; ?>
                                <option value="Email">Email</option>
                                <option value="Whatsapp">Whatsapp</option>
                                <option value="Mensaje de Texto">Mensaje de Texto</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="tipo_e">Tipo de Empleo</label>
                                <select class="form-control" id="exampleSelect1" name="tipo_e">
                                <?php echo "<option>Seleccione una opción</option>"; ?>
                                <option value="Temporal">Temporal</option>
                                <option value="Permanente">Permanente</option>
                                <option value="No Tiene">No Tiene</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="ocupacion">Ocupación</label><br>
                                <input type="text" name="ocupacion" id="ocupacion" class="form-control" required>
                            </div>
                        </div>

                        
                    </div>
                    

                    <br>
                    <input type="hidden" name="accion" value="insert_acudiente">
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="register" name="registrar">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>

            </div>

            </form>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('#alumForm').submit(function(e) {
            e.preventDefault();
            var formData = $(this).serialize();
            $.ajax({
                url: '../includes/functions.php',
                type: 'POST',
                data: formData,
                dataType: 'json',
                success: function(response) {
                    if (response.status === 'success') {
                        alert('Éxito: Los datos se guardaron correctamente');
                        window.location = "acudientes.php";
                    } else {
                        alert('Error: Ocurrió un error inesperado');
                    }
                },
                error: function(xhr, status, error) {
                    alert('Error: Ocurrió un error inesperado');
                }
            });
        });
    });
</script>