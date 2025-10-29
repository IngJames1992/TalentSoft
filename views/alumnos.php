<?php include "../includes/header.php"; ?>


<body id="page-top">

    <!-- Begin Page Content -->
    <div class="container-fluid">
       <script src="../js/tableToExcel.js"></script>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Lista de Estudiantes</h6>
                <br>

                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#alumno">
                    <span class="glyphicon glyphicon-plus"></span> Agregar Estudiante <i class="fa fa-plus"></i> </a></button>
                    
                <button id="dataTable1" class="btn btn-success" onclick="tableToExcel('dataTable', 'Lista Estudiantes')">
                    <i class="fas fa-file-excel"></i> Exportar a Excel
                </button>
                   
            </div>
            <?php include "form_alumno.php"; ?>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Identificaci&otilde;n</th>
                                <th>Tipo_Id</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Correo</th>
                                <th>Teléfono</th>
                                <th>Grado</th>
                                <th>Fecha_Creación</th>
                                <th>Matrícula</th>
                                <th>Contrato/Pagaré</th>
                                <th>Editar/Eliminar</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            require_once("../includes/db.php");
                            $result = mysqli_query($conexion, "SELECT * FROM alumnos ");
                            while ($fila = mysqli_fetch_assoc($result)) :

                                $grados=$fila['id_grado'];
                                $grado = mysqli_query($conexion, "SELECT * FROM grados WHERE id=".$grados." ");
                                $filagrado = mysqli_fetch_assoc($grado);

                            ?>
                                <tr>
                                    <td><?php echo $fila['curp']; ?></td>
                                    <td><?php echo $fila['tipo_doc']; ?></td>
                                    <td><?php echo $fila['nombre']; ?></td>
                                    <td><?php echo $fila['apellido']; ?></td>
                                    <td><?php echo $fila['correo']; ?></td>
                                    <td><?php echo $fila['telefono']; ?></td>
                                    <td><?php echo $filagrado['descripcion']; ?></td>
                                    <td><?php echo $fila['fecha']; ?></td>
                                    <td>
                                        <center><a href="../views/matricula.php ?id=<?php echo $fila['id']; ?>" class="btn btn-info btn-del1">
                                            <i class="fa fa-print "></i></a></center>
                                            
                                    </td>
                                    <td><center>
                                        <a href="../views/contrato.php?id=<?php echo $fila['id']; ?>" class="btn btn-info btn-del1">
                                            <i class="fa fa-clipboard-list "></i></a>
                                        <a href="../views/pagare.php?id=<?php echo $fila['id']; ?>" class="btn btn-outline-success btn-del1">
                                            <i class="fa fa-dollar-sign "></i></a><//center>
                                    </td>
                                    <td><center>
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#editar<?php echo $fila['id']; ?>">
                                            <i class="fa fa-edit"></i>
                                        </button>
                                        <a href="../includes/eliminar_al.php?id=<?php echo $fila['id'] ;?>" class="btn btn-danger btn-del">
                                            <i class="fa fa-trash "></i></a></center>
                                    </td>
                                </tr>
                                <?php include "editar_alumno.php"; ?>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                            

                    </script>
                    

                    <a href="modificar_alumno.php?id=<?php echo $fila['id']; ?>" class="btn btn-warning">
                    <i class="fa fa-edit"></i> Editar
                    </a>



                    <script>
    $(document).on('click', '.btn-edit', function() {
        var id = $(this).data('id');

        // Hacer una petición AJAX para obtener los datos del alumno
        $.ajax({
            url: '../includes/functions.php',
            type: 'POST',
            data: { accion: 'get_alumno', id: id },
            dataType: 'json',
            success: function(response) {
                if (response.status === 'success') {
                    // Rellenar los campos del formulario de edición
                    $('#editId').val(response.data.id);
                    $('#editNombre').val(response.data.nombre);
                    $('#editApellido').val(response.data.apellido);
                    // Continúa para todos los campos...

                    $('#editAlumnoModal').modal('show');
                } else {
                    alert('Error al obtener los datos del alumno');
                }
            }
        });
    });

    $('#editAlumnoForm').submit(function(e) {
        e.preventDefault();
        var formData = $(this).serialize();

        $.ajax({
            url: '../includes/functions.php',
            type: 'POST',
            data: formData + '&accion=editar_alumno',
            dataType: 'json',
            success: function(response) {
                if (response.status === 'success') {
                    alert('Los datos se actualizaron correctamente');
                    location.reload();
                } else {
                    alert('Error al actualizar los datos');
                }
            }
        });
    });
</script>

                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->






    </div>
    <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->




</body>


<?php include "../includes/footer.php"; ?>

</html>