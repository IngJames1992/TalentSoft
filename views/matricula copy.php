<?php include "../includes/header.php"; ?>


<body id="page-top">

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Matrícula de Estudiante</h6>
                <br>

                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#alumno">
                    <span class="glyphicon glyphicon-plus"></span> Imprimir <i class="fa fa-print"></i> </a></button>
            </div>
            <?php include "form_alumno1.php"; ?>

            <div class="card-body">
                <div class="table-responsive">
                    
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr rowspan="3">
                        <td class="border"><a href=""><center><img src="https://i.ibb.co/ZVq3LfP/cropped-Recurso-2-1024x273-2.png" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                        </td>
                        <td  colspan="5" align="center">
                        COLEGIO TALENTOS<br>
                        Creatividad - Innovación - Recreación<br>
                        Resolución 310-054.0901 del 14 de Noviembre de 2013<br>
                        FICHA DE MATRÍCULA<br><br>
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <TR>
                                    <TH style ="font-size:70%">TRD</TH>
                                    <TH style ="font-size:70%">CODIGO</TH>
                                    <TH style ="font-size:70%">VERSION</TH>
                                    <TH style ="font-size:70%">FECHA</TH>
                                    <TH style ="font-size:70%">PAGINAS</TH>
                                </TR>
                                <TR>
                                    <TD style ="font-size:60%">310-101-105</TD>
                                    <TD style ="font-size:60%">CT-CPSE-01</TD>
                                    <TD style ="font-size:60%">01</TD>
                                    <TD style ="font-size:60%">01 - 02 - 2012</TD>
                                    <TD style ="font-size:60%">Página 1 de 1</TD>
                                </TR>
                            </table>
                        </td>
                       
                        <td class="border"><a href=""><center><img src="https://i.ibb.co/YcF0MtG/Logo.jpg" alt="Logo" border="0"></center></a>
                        </td>
                    </tr>
                    </table>
                </div>
                    <br>
                    <div>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style ="font-size:85%">
                        
                        <?php
                                require_once("../includes/db.php");
                                
                                $result = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id=".$_GET['id']." ");
                                $fila = mysqli_fetch_assoc($result);

                                $acudiente1=$fila['madre'];
                                $acudiente = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente1." ");
                                $filaacu1 = mysqli_fetch_assoc($acudiente);

                                $acudiente2=$fila['padre'];
                                $acudiente2 = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente2." ");
                                $filaacu2 = mysqli_fetch_assoc($acudiente2);

                                $acudiente3=$fila['acudiente'];
                                $acudiente3 = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente3." ");
                                $filaacu3 = mysqli_fetch_assoc($acudiente3);

                                $grados=$fila['id_grado'];
                                $grado = mysqli_query($conexion, "SELECT * FROM grados WHERE id=".$grados." ");
                                $filagrado = mysqli_fetch_assoc($grado);
                                

                                date_default_timezone_set('America/Los_Angeles');
                                $hoy = date('d-m-Y');
                                $dia = date('d');
                                $ano = date('Y');
                            
                                $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
                                $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

                                $fechaActual=date("Y")."-".date("m")."-".date("d");
                                $edad = $fechaActual-$fila['birthdate'];
                        ?>
                        
                        <tr>
                            <td><b>FECHA: </b><?php echo $hoy ?></td>
                            <td><b>GRADO: </b><?php echo $filagrado['descripcion']?></td>
                            <td><b>JORNADA: </b><?php echo $fila['jornada']?></td>
                            <td colspan="2"><b>FICHA DE MATRÍCULA No.: </b><?php echo $fila['id']?></td>
                        </tr>
                        <tr>
                            <td colspan="5" style ="font-size:110%"><center><b>DATOS DEL ESTUDIANTE</b></center></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><b>APELLIDOS </b><br><?php echo $fila['apellido'] ?></center></td>
                            <td colspan="3"><center><b>NOMBRE </b><br><?php echo $fila['nombre']?></center></td>
                        </tr>
                        <tr>
                            <td><center><b>LUGAR Y FECHA DE NACIMIENTO </b><br><?php echo $fila['ciu_nacimiento'].", ".$fila['birthdate'] ?></center></td>
                            <td><center><b>TIPO DE DOCUMENTO </b><br><?php echo $fila['tipo_doc']?></center></td>
                            <td><center><b>N° DE IDENTIFICACIÓN </b><br><?php echo $fila['curp']?></center></td>
                            <td colspan="2"><center><b>LUGAR Y FECHA DE EXPEDICIÓN </b><br><?php echo $fila['ciu_expedicion'].", ".$fila['fecha_exp']?></center></td>
                        </tr>
                        <tr>
                            <td><b>EDAD: </b><?php echo $edad." Años" ?></td>
                            <td><b>RH: </b><?php echo $fila['rh']?></td>
                            <td><b>SEXO: </b><?php echo $fila['sexo']?></td>
                            <td><b>EPS: </b><?php echo $fila['eps']?></td>
                            <td><b>SISBEN/CATEGORÍA: </b><?php echo $fila['sisben']?></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><b>¿Posee alguna discapacidad?: </b><?php echo $fila['discapacidad'] ?></center></td>
                            <td colspan="3"><center><b>¿CUÁL?: </b><?php echo $fila['c_discapacidad']?></center></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><b>RELIGIÓN: </b><?php echo $fila['religion'] ?></center></td>
                            <td colspan="3"><center><b>N° PERSONAS QUE VIVEN EN EL HOGAR: </b><?php echo $fila['convive']?></center></td>
                        </tr>
                        </table>
                    
                    <div>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style ="font-size:85%">
                        
                        <tr>
                            <td colspan="3" style ="font-size:110%"><center><b>DATOS DE LA MADRE</b></center></td>
                        </tr>
                        <tr>
                            <td colspan="2"><b>NOMBRE DE LA MADRE: </b><?php echo $filaacu1['nombre']." ".$filaacu1['apellido'] ?></td>
                            <td colspan="1"><b>TELÉFONO: </b><?php echo $filaacu1['telefono']?></td>
                        </tr>
                        <tr>
                            <td><b>DIRECCIÓN: </b><?php echo $filaacu1['direccion'] ?></td>
                            <td><b>BARRIO/ESTRATO: </b><?php echo $filaacu1['barrio']." / ".$filaacu1['estrato']?></td>
                            <td><b>NIVEL EDUCATIVO: </b><?php echo $filaacu1['nivel_educativo']?></td>
                        </tr>
                        <tr>
                            <td><b>OCUPACIÓN: </b><?php echo $filaacu1['ocupacion'] ?></td>
                            <td><b>TIPO DE EMPLEO: </b><?php echo $filaacu1['tipo_empleo']?></td>
                            <td><b>EMAIL: </b><?php echo $filaacu1['correo']?></td>
                        </tr>
                        <tr>
                            <td colspan="3"><center><b>POR QUE MEDIO DESEA RECIBIR INFORMACION: </b><br><?php echo $filaacu1['medio_contacto'] ?></center></td>
                        </tr>

                        <tr>
                            <td colspan="3" style ="font-size:110%"><center><b>DATOS DEL PADRE</b></center></td>
                        </tr>
                        <tr>
                            <td colspan="2"><b>NOMBRE DEL PADRE: </b><?php echo $filaacu2['nombre']." ".$filaacu2['apellido'] ?></td>
                            <td colspan="1"><b>TELÉFONO: </b><?php echo $filaacu2['telefono']?></td>
                        </tr>
                        <tr>
                            <td><b>DIRECCIÓN: </b><?php echo $filaacu2['direccion'] ?></td>
                            <td><b>BARRIO/ESTRATO: </b><?php echo $filaacu2['barrio']." / ".$filaacu2['estrato']?></td>
                            <td><b>NIVEL EDUCATIVO: </b><?php echo $filaacu2['nivel_educativo']?></td>
                        </tr>
                        <tr>
                            <td><b>OCUPACIÓN: </b><?php echo $filaacu2['ocupacion'] ?></td>
                            <td><b>TIPO DE EMPLEO: </b><?php echo $filaacu2['tipo_empleo']?></td>
                            <td><b>EMAIL: </b><?php echo $filaacu2['correo']?></td>
                        </tr>
                        <tr>
                            <td colspan="3"><center><b>POR QUE MEDIO DESEA RECIBIR INFORMACION: </b><br><?php echo $filaacu2['medio_contacto'] ?></center></td>
                        </tr>

                        <tr>
                            <td colspan="3" style ="font-size:110%"><center><b>DATOS DEL ACUDIENTE</b></center></td>
                        </tr>
                        <tr>
                            <td colspan="2"><b>NOMBRE DEL ACUDIENTE: </b><?php echo $filaacu3['nombre']." ".$filaacu3['apellido'] ?></td>
                            <td colspan="1"><b>TELÉFONO: </b><?php echo $filaacu3['telefono']?></td>
                        </tr>
                        <tr>
                            <td><b>DIRECCIÓN: </b><?php echo $filaacu3['direccion'] ?></td>
                            <td><b>BARRIO/ESTRATO: </b><?php echo $filaacu3['barrio']." / ".$filaacu3['estrato']?></td>
                            <td><b>NIVEL EDUCATIVO: </b><?php echo $filaacu3['nivel_educativo']?></td>
                        </tr>
                        <tr>
                            <td><b>OCUPACIÓN: </b><?php echo $filaacu3['ocupacion'] ?></td>
                            <td><b>PARENTEZCO: </b><?php echo $filaacu3['parentezco']?></td>
                            <td><b>EMAIL: </b><?php echo $filaacu3['correo']?></td>
                        </tr>
                        <tr>
                            <td colspan="3"><center><b>POR QUE MEDIO DESEA RECIBIR INFORMACION: </b><br><?php echo $filaacu2['medio_contacto'] ?></center></td>
                        </tr>
                        </table>
                    </div>

                    <div>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style ="font-size:85%">
                        
                        <tr>
                            <td style ="font-size:110%"><center><b>COMPROMISOS DE CORRESPONSABILIDAD</b></center></td>
                        </tr>

                        <tr>
                            <td>
                                <p  style="text-align: justify; font-size:110%">Como constancia de lo anterior se firma el presente protocolo avalado por el Manual de Convivencia 
                                    por las partes interesadas, para otorgar la calidad de estudiante regular del Colegio TALENTOS adquiriendo de manera voluntaria 
                                    como estudiante y padre de familia o acudiente los siguientes compromisos:
                                </p>

                                <p  style="text-align: justify; font-size:110%"><center>1.   Cumplir con los compromisos y recomendaciones académicos y de convivencia social definidos por la institución educativa.  Art. 13 Decreto 1290. <br>
                                    2.   Cumplir con todas las obligaciones, responsabilidades y deberes de corresponsabilidad como lo exige al artículo 10 de la ley 1098.<br>
                                    3.   Cumplir con todas las disposiciones del Pacto de Convivencia, planes de área y lo dispuesto en el PEI.</center>
                                </p>
                                <br> <br>
                                <p>________________________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;________________________________________________<br>
                                                            <b>FIRMA RECTOR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FIRMA PADRE DE FAMILIA/ACUDIENTE  
                                </p>
                            
                            </td>
                        </tr>
                    
                        </table>
                    </div>
                    
                    
                    </div>
                </div>
            </div>
        </div>

  
</body>


<?php include "../includes/footer.php"; ?>

</html>