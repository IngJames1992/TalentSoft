<?php
ob_start();
?>

<!DOCTYPE html>
<html lang="es">


<head>
<style>
/**
Establezca los márgenes de la página en 0, por lo que el pie de página y el encabezado
puede ser de altura y anchura completas.
**/
@page {
margin: 1cm 0cm;
}

/** Defina ahora los márgenes reales de cada página en el PDF **/
body {
    margin: 30mm 8mm 2mm 8mm;
}

main {
    width: 750;height: 500px;
}

/** Definir las reglas del encabezado **/
header {
position: fixed;
top: 0cm;
left: 0cm;
right: 0cm;
width: 750;
height: 150px;

}

/** Definir las reglas del pie de página **/
footer {
position: fixed;
bottom: 0cm;
left: 0cm;
right: 0cm;
height: 2cm;
}



{margin:1 ;padding: 1;}
    
    
    header#menu{width: 750;height: 50px;background-color: rgb(255, 119, 0);}
    nav{width: 375;height: 50px;float:right;background-color: rgb(255, 119, 0);}
    section#buscador{width: 375px;height:50px;float:left;background-color: rgb(48, 32, 8);}
    main{width: 750;height: 500px;}
    footer{width: 750;height: 50px;background-color: rgb(134, 30, 107);}
    section#buscador{width: 375px;height:50px;float:left;background-color: rgb(32, 34, 151);}
    section#banner{width: 250px;height:250px;float:left;background-color: rgb(228, 205, 255);}
    section#logo{width: 250px;height:250px;float:left;background-color: rgb(106, 93, 72);}
    section#login{width: 250px;height:250px;float:left;background-color: rgb(53, 168, 83);}
    aside#left{width: 150px;height: 400px;float:left;background-color: rgb(223, 255, 40);}
    article{width: 500px;height: 400px;float:left;background-color: rgb(247, 171, 48);}
    aside#right{width: 100px;height: 400px;float:right;background-color: rgb(2, 24, 8);}
</style>
</head>
<body>
<!-- Defina bloques de encabezado y pie de página antes de su contenido -->
<header >
<table align="center" border="1px">
                        <tr rowspan="1">
                            <td  
                                class="border"><a href=""><center><img src="https://i.ibb.co/YcF0MtG/Logo.jpg"  ></center></a>
                            </td>
                            <td  colspan="5" align="center">
                            COLEGIO TALENTOS<br>
                            Creatividad - Innovación - Recreación<br>
                            Resolución 310-054.0901 del 14 de Noviembre de 2013<br>
                            FICHA DE MATRÍCULA<br><br>
                            <table border="1px">
                                <TR>
                                    <TH style ="font-size:60%">TRD</TH>
                                    <TH style ="font-size:60%">CODIGO</TH>
                                    <TH style ="font-size:60%">VERSION</TH>
                                    <TH style ="font-size:60%">FECHA</TH>
                                    <TH style ="font-size:60%">PAGINAS</TH>
                                </TR>
                                <TR>
                                    <TD style ="font-size:60%">310-101-105</TD>
                                    <TD style ="font-size:60%">CT-CPSE-01</TD>
                                    <TD style ="font-size:60%">01</TD>
                                    <TD style ="font-size:60%">01 - 02 - 2012</TD>
                                    <TD style ="font-size:60%">Página 1 de 4</TD>
                                </TR>
                            </table>
                            </td>
                            
                            <td class="border"><a href=""><center><img src="https://i.ibb.co/YcF0MtG/Logo.jpg"  border="0"></center></a>
                            </td>
                        </tr>
                    </table>
</header>


<br><br><br><br><br>                    
                <div>
                        <table border="1px" style ="font-size:65%" >
                        
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
                            <td colspan="2"><b>FICHA DE MATRÍCULA No.: </b><?php echo $ano."-".$fila['id']?></td>
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
                        <table border="1px" style ="font-size:75%" align="center">
                        
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
                            <td><b>PARENTEZCO: </b><?php echo $fila['parentezco']?></td>
                            <td><b>EMAIL: </b><?php echo $filaacu3['correo']?></td>
                        </tr>
                        <tr>
                            <td colspan="3"><center><b>POR QUE MEDIO DESEA RECIBIR INFORMACION: </b><br><?php echo $filaacu2['medio_contacto'] ?></center></td>
                        </tr>
                        </table>
                    </div>

                    <div>
                        <table border="1px" style ="font-size:65%">
                        
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
                                <p>__________________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__________________________________________<br>
                                                            <b>FIRMA RECTOR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FIRMA PADRE DE FAMILIA/ACUDIENTE  
                                </p>
                            
                            </td>
                        </tr>
                    
                        </table>
                    </div>
                    
                    
                </div>
               

  
</html>

<?php

$html=ob_get_clean();
//echo $html;

require_once '../librerias/dompdf/autoload.inc.php'; 
use Dompdf\Dompdf;

$dompdf = new Dompdf();


$options = $dompdf->getOptions();
$options->set(array('isRemoteEbanle' => true));
$options->setIsRemoteEnabled(true);
$dompdf->setOptions($options);

$dompdf->loadhtml($html);
$dompdf->setPaper('letter');
//$dompdf->setPaper('A4',"portrait");

$dompdf->render();

$dompdf->stream("Matricula_".$fila['nombre']." ".$fila['apellido'].".pdf", array("Attachment" => false));

?>