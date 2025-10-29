<div class="modal fade" id="editar<?php echo $fila['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Editar Alumno</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">

            <form id="alumForm<?php echo $fila['id']; ?>" method="POST">
                
                <?php
                    
                    $grados=$fila['id_grado'];
                    $grado = mysqli_query($conexion, "SELECT * FROM grados WHERE id=".$grados." ");
                    $filagrado = mysqli_fetch_assoc($grado);
                ?>  
                <div class="row">
                    <div class="col-sm-6">
                        <div class="mb-3">
                            <label for="password">Grado<?php echo $filagrado['descripcion']; ?></label><br>
                            <select name="id_grado" id="id_grado" class="form-control" value="<?php echo $filagrado['descripcion']; ?>"required>
                                
                                <?php

                                include("db.php");

                                $sql = "SELECT * FROM grados ";
                                $resultado = mysqli_query($conexion, $sql);
                                while ($consulta = mysqli_fetch_array($resultado)) {
                                    echo '<option value="' . $consulta['id'] . '">' . $consulta['descripcion'] . '</option>';
                                }

                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="mb-3">
                            <label for="jornada">Jornada</label>
                            <select class="form-control" id="exampleSelect1" name="jornada" value="<?php echo $fila['jornada']; ?>">
                            
                                <option value="Mañana">Mañana</option>
                                <option value="Tarde">Tarde</option>
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
                                <label for="password">Identificación</label><br>
                                <input type="text" name="curp" id="curp" class="form-control" value="<?php echo $fila['curp']; ?>" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                            <label for="tipo_doc">Tipo Documento</label>
                                <select class="form-control" id="exampleSelect1" name="tipo_doc" value="<?php echo $fila['tipo_doc']; ?>">
                                
                                    <option value="TI">TI</option>
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
                                <label for="password">Fecha de Nacimiento</label><br>
                                <input type="date" name="birthdate" id="birthdate" class="form-control" value="<?php echo $fila['birthdate']; ?>"required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Dpto. Nacimiento</label><br>
                                    <select name="dpto_nac" id="dpto_nac" class="form-control" value="<?php echo $fila['dpto_nac']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sql = "SELECT * FROM departamentos ";
                                        $resultado = mysqli_query($conexion, $sql);
                                        while ($consulta = mysqli_fetch_array($resultado)) {
                                            echo '<option value="' . $consulta['nombre'] . '">' . $consulta['nombre'] . '</option>';
                                        }

                                        ?>
                                    </select>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Ciudad Nacimiento</label><br>
                                <input type="text" name="ciu_nac" id="ciu_nac" class="form-control" value="<?php echo $fila['ciu_nacimiento']; ?>" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Fecha de Expedición</label><br>
                                <input type="date" name="expedicion" id="expedicion" class="form-control" value="<?php echo $fila['fecha_exp']; ?>" required>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Dpto. Expedición</label><br>
                                    <select name="dpto_exp" id="dpto_exp" class="form-control" value="<?php echo $fila['dpto_exp']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sql = "SELECT * FROM departamentos ";
                                        $resultado = mysqli_query($conexion, $sql);
                                        while ($consulta = mysqli_fetch_array($resultado)) {
                                            echo '<option value="' . $consulta['nombre'] . '">' . $consulta['nombre'] . '</option>';
                                        }

                                        ?>
                                    </select>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Ciudad Expedición</label><br>
                                <input type="text" name="ciu_exp" id="ciu_exp" class="form-control" value="<?php echo $fila['ciu_expedicion']; ?>" required>
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

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Correo</label><br>
                                <input type="email" name="correo" id="correo" class="form-control" value="<?php echo $fila['correo']; ?>" required>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Teléfono</label><br>
                                <input type="tel" name="telefono" id="telefono" class="form-control" value="<?php echo $fila['telefono']; ?>" required>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="password">EPS</label><br>
                                    <select name="id_eps" id="id_eps" class="form-control" value="<?php echo $fila['eps']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sqleps = "SELECT * FROM eps ";
                                        $resultadoeps = mysqli_query($conexion, $sqleps);
                                        while ($consultaeps = mysqli_fetch_array($resultadoeps)) {
                                            echo '<option value="' . $consultaeps['id'] . '">' . $consultaeps['descripcion'] . '</option>';
                                        }

                                        ?>
                                    </select>
                                </div>
                            </div>
                        
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="rh">RH</label>
                                <select class="form-control" id="exampleSelect1" name="rh" value="<?php echo $fila['rh']; ?>">
                                
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                                </select>
                            </div>
                        </div>
                       
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                            <label for="sexo">Sexo</label>
                                <select class="form-control" id="exampleSelect1" name="sexo" value="<?php echo $fila['sexo']; ?>">
                                
                                    <option value="Femenino">Femenino</option>
                                    <option value="Masculino">Masculino</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Sisbén/Categoria</label><br>
                                <input type="text" name="sisben" id="sisben" class="form-control" value="<?php echo $fila['sisben']; ?>" required>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                            <label for="discapacidad">¿Posee alguna discapacidad?</label>
                                <select class="form-control" id="exampleSelect1" name="discapacidad" value="<?php echo $fila['discapacidad']; ?>" required>
                                
                                    <option value="SI">SI</option>
                                    <option value="NO">NO</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">¿Cuál?</label><br>
                                <input type="text" name="cual" id="cual" class="form-control" value="<?php echo $fila['c_discapacidad']; ?>">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="password">Religión</label><br>
                                <input type="text" name="religion" id="religion" class="form-control" value="<?php echo $fila['religion']; ?>" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                            <label for="conviven">Personas que viven en el hogar</label>
                                <select class="form-control" id="exampleSelect1" name="conviven" value="<?php echo $fila['convive']; ?>">
                                
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="+10">+10</option>
                                </select>
                            </div>
                        </div>
                        
                    <div class="row">
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="password">Nombre de la Madre</label><br>
                                    <select name="madre" id="madre" class="form-control" value="<?php echo $fila['madre']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sqleps = "SELECT * FROM acudientes ";
                                        $resultadoeps = mysqli_query($conexion, $sqleps);
                                        while ($consultaeps = mysqli_fetch_array($resultadoeps)) {
                                            echo '<option value="' . $consultaeps['documento'] . '">' . $consultaeps['nombre'] ." ". $consultaeps['apellido'] . '</option>';
                                        }

                                        ?>
                                    </select>
                                </div>
                        </div>
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="password">Nombre del Padre</label><br>
                                    <select name="padre" id="padre" class="form-control" value="<?php echo $fila['padre']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sqleps = "SELECT * FROM acudientes ";
                                        $resultadoeps = mysqli_query($conexion, $sqleps);
                                        while ($consultaeps = mysqli_fetch_array($resultadoeps)) {
                                            echo '<option value="' . $consultaeps['documento'] . '">' . $consultaeps['nombre'] ." ". $consultaeps['apellido'] . '</option>';
                                        }

                                        ?>
                                    </select>
                                </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="password">Nombre del Acudiente</label><br>
                                    <select name="acudiente3" id="acudiente3" class="form-control" value="<?php echo $fila['acudiente']; ?>" required>
                                        
                                        <?php

                                        include("db.php");

                                        $sqlacu = "SELECT * FROM acudientes ";
                                        $resultadoacu = mysqli_query($conexion, $sqlacu);
                                        while ($consultaacu = mysqli_fetch_array($resultadoacu)) {
                                            echo '<option value="' . $consultaacu['documento'] . '">' . $consultaacu['nombre'] ." ". $consultaacu['apellido'] . '</option>';
                                        }

                                        ?>
                                    </select>
                                </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="mb-3">
                            <label for="parentezco">Parentezco Acudiente</label>
                                <select class="form-control" id="exampleSelect1" name="parentezco" value="<?php echo $fila['parentezco']; ?>">
                                
                                <option value="Madre">Madre</option>
                                <option value="Padre">Padre</option>
                                <option value="Hermano(a)">Hermano(a)</option>
                                <option value="Tio">Tío(a)</option>
                                <option value="Abuelo">Abuelo(a)</option>
                                <option value="Primo">Primo(a)</option>
                                <option value="Otro">Otro</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    </div>

                    <br>
                    <input type="hidden" name="accion" value="editar_alumno">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="editForm(<?php echo $fila['id']; ?>)">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>

            </div>

            </form>
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
                        location.assign('alumnos.php');
                    }, 2000);
                } else {
                    alert("Ha ocurrido un error al actualizar el registro");
                }
            },
            error: function() {
                alert("Error de comunicacion con el servidor12");
            }
        });
    }
</script>

</div>
