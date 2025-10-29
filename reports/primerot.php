

<style>
/* No imprimas links / hrefs */
@media print {
  a[href]:after {
    content: none
  }
}
</style>
<html>
<body id="page-top">

                <div class="table-responsive">
                    
                    <table width="100%" cellspacing="0" border="1">
                    <tr rowspan="3">
                        <td ><a href=""><center><img src="https://i.ibb.co/ZVq3LfP/cropped-Recurso-2-1024x273-2.png" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                        </td>
                        <td  colspan="5" align="center">
                        COLEGIO TALENTOS<br>
                        MATRÍCULADOS 2024<br><br>
                            <table border="1" width="100%" cellspacing="0">
                                <TR align="center">
                                    <TH style ="font-size:70%">TRD</TH>
                                    <TH style ="font-size:70%">CODIGO</TH>
                                    <TH style ="font-size:70%">VERSION</TH>
                                    <TH style ="font-size:70%">FECHA</TH>
                                    <TH style ="font-size:70%">PAGINAS</TH>
                                </TR>
                                <TR align="center">
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
                        <table border="1" width="100%" cellspacing="0" style ="font-size:65%">
                            <h1 align="center">PRIMERO TARDE</h1>
                            <tr>
                                <th>Nro.</th>
                                <th>Identificación</th>
                                <th>Nombre</th>
                            </tr>
                            
                            <?php
                                
                                require_once("../includes/db.php");
                                $filas=1;
                                $result = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='6' ORDER BY apellido ASC ");
                                while ($fila = mysqli_fetch_assoc($result)) :
                            ?>
                            <tr>
                                <td><?php echo $filas; ?></td>
                                <td><?php echo $fila['curp']; ?></td>
                                <td><?php echo $fila['apellido']." ".$fila['nombre']; ?></td>
                            </tr>
                            
                            <?php $filas++; endwhile; ?>
                        </table>
                    </div>
                    
</body>
</html>