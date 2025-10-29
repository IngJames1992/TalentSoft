


<body id="page-top">

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
           

            <div class="card-body">
                <div class="table-responsive">
                    
                    <table border="1" id="dataTable" width="100%" cellspacing="0">
                    <tr rowspan="3">
                        <td  
                            class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                        </td>
                        <td  colspan="5" align="center">
                        COLEGIO TALENTOS<br>
                        PAGARÉ<br>
                        Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
                        <table border="1" id="dataTable" width="100%" cellspacing="0">
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
                                <TD style ="font-size:60%">Página 1 de 2</TD>
                            </TR>
                        </table>
                        </td>
                       

                        <td><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                        </td>
                    </tr>
                    </table>
                    </div>
                    <br>
                    <div>
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>

                    <?php
                            require_once("../includes/db.php");
                            
                            $result = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id=".$_GET['id']." ");
                            $fila = mysqli_fetch_assoc($result);

                            $acudiente1=$fila['madre'];
                            $acudiente = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente1." ");
                            $filaacu1 = mysqli_fetch_assoc($acudiente);

                            $grados=$fila['id_grado'];
                            $grado = mysqli_query($conexion, "SELECT * FROM grados WHERE id=".$grados." ");
                            $filagrado = mysqli_fetch_assoc($grado);

                            $acudiente3=$fila['acudiente'];
                            $acudiente3 = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente3." ");
                            $filaacu3 = mysqli_fetch_assoc($acudiente3);

                    ?>
                    <p  style="text-align: justify;"><b>GRADO: </b><?php echo $filagrado['descripcion']?>
                    </p> 

                    <p  style="text-align: justify;">Valor: UN MILLON NOVECIENTOS SESENTA MIL PESOS M/CTE ($ 1.960.000), Moneda legal Colombiana
                    </p> 

                    <p style="text-align: justify;">Ciudad y Dirección donde se efectuará el pago: En la ciudad de Tuluá – Valle, COLEGIO TALENTOS Calle 4 A # 22 C 21
                    </p>

                    <p style="text-align: justify;">Nosotros <b><?php echo $filaacu3['nombre']." ".$filaacu3['apellido']?></b> identificado con C.C No. <b><?php echo $filaacu3['documento']?></b> EXPEDIDA EN LA CIUDAD DE  <b><?php echo $filaacu3['ciu_exp']?></b>                                       

                    
                    <p style="text-align: justify;">Mayores de edad, vecinos y residentes en esta ciudad, quienes nos denominamos los deudores, por medio del presente documento, declaramos y aceptamos este pagaré que se regirá por las siguientes clausulas:
                    </p>


                         
                    <p  style="text-align: justify;"><b>PRIMERO-Objeto. </b>Que por virtud del presente título valor nos obligamos a pagar incondicionalmente y solidariamente en la ciudad de Tuluá, a la orden de TRIANA PEREZ MARTHA LUCIA C.C No. 38.861.185 quien en su calidad de Rector del COLEGIO TALENTOS de la ciudad de Tuluá, o a quien represente sus derechos, la suma de UN MILLON NOVECIENTOS SESENTA MIL PESOS M/CTE ($ 1.960.000), Moneda legal Colombiana 
                    </p>
                    
                    
                    
                    <p  style="text-align: justify;">
                        
                        
                        <b>SEGUNDA-Plazo:</b> Que los deudores pagaremos dicha suma de dinero así: la suma de DOSCIENTOS SESENTA MIL PESOS MCTE ($ 260.000), Moneda legal colombiana pagadera el día de la matrícula y el valor restante en DIEZ (10) cuotas mensuales por valor de CIENTO SETENTA MIL PESOS MCTE ($ 170.000) Moneda legal colombiana cada una, este valor correspondiente a pensión y se debe cancelar los cinco (5) primeros días de cada mes y así sucesivamente sin interrupción hasta el cumplimiento total de la obligación, siendo la última cuota pagadera los cinco (5) primeros días del mes de Noviembre del año 2024. 
                        <br><br><b>TERCERA:</b> Que en caso de mora en el pago de cualquiera de las obligaciones aquí contraídas los deudores pagaremos a TRIANA PEREZ MARTHA LUCIA, o a quien represente sus derechos, intereses moratorios liquidados a la tasa máxima legal permitida, según certificación de la superintendencia financiera de Colombia, sobre las cuotas pactadas y adeudadas, sin perjuicio de las acciones legales que el acreedor pueda adelantar para el cobro judicial y/o extrajudicial de la obligación, caso en el cual serán de nuestro cargo exclusivo los gastos y los costos de cobranza, incluyendo los honorarios del abogado a quien se le confíen las gestiones del cobro, honorarios que en la etapa pre-jurídica serán del 12% liquidados sobre el capital debido más los intereses adeudados y en la etapa de cobro jurídico, serán los liquidados por el respectivo juzgado que conozca el proceso. 
                        <br><br><b>CUARTA-Cláusula Aceleratoria:</b> El tenedor podrá declarar insubsistente los plazos de esta obligación o de las cuotas que constituyan el saldo y exigir su pago inmediato, judicial o extrajudicialmente en los siguientes casos: a) Cuando los deudores incumplamos cualquiera de las obligaciones derivadas del presente documento, b) Cuando los deudores iniciemos tramite de liquidación obligatoria, se sometan a proceso concordatario o convoquen a concurso de acreedores, y c) En caso de que la información suministrada para la obtención de este crédito sea falsa, inexacta o incompleta. 
                        
                        
                    </p>
                    <div class="card-body">
                <div class="table-responsive">
                    
                    <table border="1" id="dataTable" width="100%" cellspacing="0">
                    <tr rowspan="3">
                        <td  
                            class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                        </td>
                        <td  colspan="5" align="center">
                        COLEGIO TALENTOS<br>
                        PAGARÉ<br>
                        Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
                        <table border="1" id="dataTable" width="100%" cellspacing="0">
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
                                <TD style ="font-size:60%">Página 2 de 2</TD>
                            </TR>
                        </table>
                        </td>
                       

                        <td><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                        </td>
                    </tr>
                    </table>
                    </div>
                   <p>
                   <br><b>QUINTA.</b> Autorizamos al acreedor o a quien este determine, a consultar y a reportar nuestra situación crediticia a las centrales de riesgo existentes y a aplicar los pagos realizados en primer lugar a las sanciones establecidas contractualmente en la cláusula tercera de este título valor y por último el capital adeudado en el presente pagare.
                    </p>
                    
                    <?php 
                        date_default_timezone_set('America/Los_Angeles');
                        $hoy = date('d-m-Y');
                        $dia = date('d');
                    
                        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
                        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
                       
                    ?>
                    <p  style="text-align: justify;">Para constancia se firma en la ciudad de Tuluá – Valle el <b><?php echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y') ; ?></b>.  
                    </p>
                    <br>
                    <br>
                    <p  style="text-align: justify;">____________________________________<br>
                                                  <b>NOMBRE COMPLETO DEL PADRE (DEUDOR) Y/O ACUDIENTE </b>  
                    </p>
                    <br>
                    <br>
                    
                    <p>____________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                  <b>CEDULA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </p>
                    
                    <p>_____________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                  <b>DIRECCIÓN DE RESIDENCIA Y CIUDAD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </p>
                    
                    <p>______________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                  <b>CELULAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </p>

                    <p>______________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                  <b>CORREO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </p>
                    <br>
                    <p  style="text-align: center;">EL RECTOR  
                    </p>
                    <br><br><br>
                    <p  style="text-align: center;">____________________________________________<br>
                                                  <b>MARTHA LUCIA TRIANA PEREZ<br>
                                                  Dirección Calle 4A # 22 C 21<br>
                                                  Cel. 317-6980601<br>  
                                                  Teléfono (602) 230 23 60<br>
                                                  Correo electrónico: colegiotalentos_@hotmail.com</b>

                    </p>
                    
                    </tr>
                    </table>
</div>
                        
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