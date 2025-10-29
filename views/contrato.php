<style>
/* No imprimas links / hrefs */
@media print {
  a[href]:after {
    content: none
  }
}
</style>


<body id="page-top">

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            
            

            <div class="card-body">
                <div class="table-responsive">
                    
                    <table border="1" width="100%" cellspacing="0">
                        <tr rowspan="3">
                            <td  
                                class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                            </td>
                            <td  colspan="5" align="center">
                            COLEGIO TALENTOS<br>
                            CONTRATO DE PRESTACION DE SERVICIOS<br>
                            Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
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
                                    <TD style ="font-size:60%">Página 1 de 5</TD>
                                </TR>
                            </table>
                            </td>
                            
                            <td class="border"><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                            </td>
                        </tr>
                    </table>
                </div>
                <br>
            <div>
                <table border="1" width="100%" cellspacing="0" style ="font-size:75%">
                    <tr>

                    <?php
                            require_once("../includes/db.php");
                            
                            $result = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id=".$_GET['id']." ");
                            $fila = mysqli_fetch_assoc($result);

                            $acudiente1=$fila['madre'];
                            $acudiente = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente1." ");
                            $filaacu1 = mysqli_fetch_assoc($acudiente);

                            $acudiente3=$fila['acudiente'];
                            $acudiente3 = mysqli_query($conexion, "SELECT * FROM acudientes WHERE documento=".$acudiente3." ");
                            $filaacu3 = mysqli_fetch_assoc($acudiente3);

                            

                    ?>
                    <p  style="text-align: justify; font-size:75%"><b>MARTHA LUCIA TRIANA PÉREZ</b>, mayor de edad, vecina y residente en TULUA, identificada con cédula de ciudadanía 
                       No 38.861.185 expedida en Buga, Valle del Cauca, obrando en calidad Rector del COLEGIO TALENTOS de la ciudad de Tuluá, 
                       institución de carácter privado con No. Resolución 310-054.0901 del 14 de Noviembre de 2013 de la Secretaria de Educación,
                       y <b style="text-align: justify; font-size:75%"><?php echo $filaacu3['nombre']." ".$filaacu3['apellido']?> </b>en su calidad de padres y/o acudientes del (la) alumno(a) <b style="text-align: justify; font-size:75%"><?php echo $fila['nombre']." ".$fila['apellido']?> </b> se denominaran PADRES 
                       DE FAMILIA Y/O ACUDIENTES, acuerdan celebrar el presente Contrato de Prestación de Servicios Educativos - 2025. DECLARANDOSE
                       EN CAPACIDAD DE PAGO, rigiéndose por lo dispuesto en el ordenamiento jurídico colombiano y las cláusulas especiales que a 
                       continuación se pactan de manera libre y voluntaria:
                    </p> 

                    <p  style="text-align: justify; font-size:75%"><b>PRIMERA: DEFINICION DEL CONTRATO. </b>El presente contrato formaliza la vinculación del EDUCANDO al servicio educativo que ofrece EL COLEGIO, 
                        dentro de la autonomía prevista por la ley, y por lo tanto el (la) ESTUDIANTE, sus padres y/o acudientes aceptar y formalizan tal vinculación se realiza en los términos del artículo 95, 
                        96 y  201 de la ley 115 de 1.994 y demás disposiciones normativas vigentes y pertinentes, entre todas aquellas que se establezcan en razón a la emergencia sanitaria y compromete a las partes y 
                        al educando en las  obligaciones legales, Constitucionales y pedagógicas tendientes a hacer efectiva la presentación del servicio educativo, obligaciones que son correlativas y esenciales para 
                        la consecución del objetivo  y de los fines comunes ya que el derecho a la educación se considera un derecho-deber. Sentencia T-625/13.
                    </p> 

                    <?php
                    $grados=$fila['id_grado'];
                    $grado = mysqli_query($conexion, "SELECT * FROM grados WHERE id=".$grados." ");
                    $filagrado = mysqli_fetch_assoc($grado);
                    ?>      
                    <p  style="text-align: justify; font-size:75%"><b>SEGUNDA – OBJETIVO DEL CONTRATO. </b>El objetivo del presente contrato es procurar la formación integral del EDUCANDO mediante la recíproca complementación de esfuerzos 
                        del mismo, de los <b>PADRE/MADRE/CUIDADOR</b> en calidad de Acudiente y del COLEGIO, para la búsqueda de pleno desarrollo de la personalidad del EDUCANDO y de un rendimiento académico satisfactorio en el 
                        ejercicio del programa curricular correspondiente al grado <b><?php echo $filagrado['descripcion']?> </b> con las normas, reglamentos y lineamientos expedidos por el COLEGIO. 
                    </p>
                    
                    <p  style="text-align: justify; font-size:75%"><b>TERCERA – OBLIGACIONES ESENCIALES DEL CONTRATO. </b>Son obligaciones de la esencia del presente contrato para cumplir con el fin común de la educación del EDUCANDO, las siguientes. 
                        <b>A.</b> Por parte del <b>EDUCANDO</b>, asistir al COLEGIO o clases virtuales cuando así lo disponga el Gobierno Nacional, departamental y municipal, de acuerdo a la evolución de la emergencia sanitaria; así mismos cumplir 
                        con las medidas de bioseguridad establecidas para el regreso a clases y cumplir con las pautas definidas y establecidas en el Proyecto Educativo Institucional y en el Reglamento Interno o Manual de Convivencia. 
                        <b>B.</b> Por parte del <b>PADRE, MADRE O CUIDADOR</b>, pagar oportunamente el costo del servicio educativo e integrarse cumplida y solidariamente al COLEGIO para la formación del EDUCANDO y cumplir con los deberes y obligaciones 
                        consagrados en el Reglamento Interno o Manual de Convivencia y la protección de los derechos fundamentales que le asiste al educando. C. Por parte del COLEGIO, impartir la enseñanza contratada y proporcionar la 
                        mejor calidad de educación posible de acuerdo con su capacidad, cumpliendo con lo establecido en el Proyecto Educativo Institucional y en el Reglamento Interno o Manual de Convivencia, así mismo, se obliga adoptar 
                        y dar cumplimiento a las medidas de bioseguridad establecidas por el Gobierno Nacional, departamental o municipal, velando siempre por la protección del estudiante.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>CUARTA. DURACION Y RENOVACION. </b>El presente contrato tiene una vigencia de un (1) año lectivo contado a partir del  1 de febrero de 2025 hasta el 30 de Noviembre de 2025; su ejecución será 
                        sucesiva por periodos mensuales y podrá renovarse, en cada respectivo año escolar, previa la firma de un nuevo contrato, 
                        siempre y cuando el <b>ESTUDIANTE</b> y los <b>PADRES DE FAMILIA Y/O ACUDIENTES</b> hayan cumplido estrictamente las 
                        obligaciones estipuladas en el presente contrato y en el MANUAL DE CONVIVENCIA, demás normas o lineamientos expedidos por el COLEGIO.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>QUINTA: VALOR. </b>El presente contrato tiene un costo anual de: <b>UN MILLON NOVECIENTOS SESENTA MIL PESOS M/CTE ($ 1.960.000)</b> Para los grados <b>Pre – Jardín, Jardín Transición, Primero, Segundo, Tercero, 
                        Cuarto, Quinto</b>; el cual será cancelado así: <b>POR MATRICULA</b>, la suma de <b>DOSCIENTOS SESENTA MIL PESOS MCTE ($ 260.000)</b>, pagadera a la suscripción del presente contrato y DIEZ (10) cuotas mensuales por valor de 
                        <b>CIENTO SETENTA MIL PESOS MCTE ($ 170.000)</b> cada una, las cuales serán canceladas dentro de los CINCO (5) primeros días de cada periodo mensual, a partir del mes de Febrero cinco (5) de dos mil veinticuatro (2025) 
                        hasta su vencimiento en Noviembre cinco (5) de dos mil veinticuatro (2025).
                    </p>
                    
                    <p  style="text-align: justify; font-size:75%"><b>Parágrafo 1. </b>En caso de mora en el pago de una o varias cuotas, LOS PADRES DE FAMILIA Y/O ACUDIENTES pagaran intereses moratorios liquidados a la tasa máxima legal permitida, certificada por la 
                        superintendencia Financiera de Colombia, o la entidad que asuma sus funciones, liquidados sobre las cuotas mensuales pactadas y adeudas, sin perjuicio de las acciones legales que el COLEGIO pueda adelantar para el cobro judicial y/o 
                        extrajudicial de la obligación, caso en el cual, estará a cargo exclusivo de los PADRES DE FAMILIA y/o ACUDIENTES. El protesto de la ley (Artículo 731 de C. De Cio.) Los gastos y los costos de cobranza incluyendo los honorarios del abogado, 
                        a quien se confié las gestiones de cobro, honorarios que en la etapa pre- jurídica serán del 12%, liquidados sobre la totalidad del capital y de los intereses adeudados más el IVA, si hubiere lugar a este y en la etapa jurídica serán los 
                        liquidados por el juez que conozca el proceso.
                    </p>
                    <br><br><br>

                    <div class="table-responsive">
                    
                            <table border="1" width="100%" cellspacing="0">
                                <tr rowspan="3">
                                    <td  
                                        class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                                    </td>
                                    <td  colspan="5" align="center">
                                    COLEGIO TALENTOS<br>
                                    CONTRATO DE PRESTACION DE SERVICIOS<br>
                                    Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
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
                                            <TD style ="font-size:60%">Página 2 de 5</TD>
                                        </TR>
                                    </table>
                                    </td>
                                    
                                    <td class="border"><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br>
                    <div>
                    
                    <p  style="text-align: justify; font-size:75%"><b>Parágrafo 1.1: </b>Para los pagos que se realicen a partir del día seis (6) de cada mes, dará inicio al cobro pre-jurídico. <b>Parágrafo 1.2:</b> Para garantizar el pago de la suma de dinero correspondiente, 
                        los padres del EDUCANDO (A) se obligan a constituir y a aceptar un pagaré o título valor que el colegio estime necesario, por la cantidad determinada el que será ejecutado por su valor total o por los saldos insolutos, cuando el obligado 
                        no pague dos (2) cuotas de las establecidas. <b>Parágrafo 1.3</b> La ausencia temporal o total dentro del mes por enfermedad u otra causa atribuible al EDUCANDO (A), al padre de familia o acudiente, no dará derecho al aquí comprometido a 
                        descontar suma alguna de lo obligado a pagar o que la comunidad o el colegio les hagan devoluciones o abonos a meses posteriores. <b>Parágrafo 1.4:</b> En caso de retiro del alumno después de iniciado el año escolar, no dará lugar a devoluciones 
                        por concepto de matrícula, en caso de retiro antes de iniciarse el año escolar se devolverá lo equivalente al 85% del valor cancelado por concepto de matrícula.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>Parágrafo 3: </b>Las partes contratantes dentro de esta cláusula renuncian a los requerimientos de la constitución en mora de la obligación, a los requerimientos judiciales y extrajudiciales.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>Parágrafo 4: </b>Este contrato presta merito ejecutivo para las partes contratantes a partir de su firma, al tenor del Artículo 422 del CGP.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>SEXTA. LOS PADRES DE FAMILIA Y/O ACUDIENTES, </b>autorizan al COLEGIO o a quien este determine, para que consulte, reporte, procese y divulgue a cualquier central de información del sector educativo 
                        colombiano y a cualquier otra entidad que maneje bases de datos con los mismos fines, entre ellos DATACREDITO, COVINOC, CIFIN, el nacimiento, manejo, modificación y extinción de las obligaciones contraídas con anterioridad o a través 
                        del presente contrato con el COLEGIO, con los sectores comercial y financieros colombianos; así como también el reporte a la Secretaria de Educación en el sistema integrado de matrícula SIMAT, SIMPADE, FAMILIAS EN ACCIÓN, en el cual se realiza la gestión de la 
                        matrícula de los estudiantes, entre otros. De igual manera los PADRES DE FAMILIA Y/O ACUDIENTES, autorizan expresamente aplicar los pagos que realicen en primer lugar a las sanciones establecidas contractualmente en el parágrafo 2 
                        de esta cláusula y por último el valor de las pensiones (Art 1653 del CC).
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>SEPTIMA. DERECHOS Y OBLIGACIONES DE LOS PADRES DE FAMILIA Y/O ACUDIENTES, </b>En cumplimiento del Decreto 1286 de 2005, artículos 2 y 3 y conforme a las normas vigentes para el servicio educativo 
                        y en concordancia con el objeto del presente contrato, los PADRES DE FAMILIA Y/O ACUDIENTES tienen derecho a: a) exigir la regular prestación del servicio educativo. b) Exigir que el servicio se ajuste a los programas oficiales; 
                        c) Exigir el cumplimiento del PEI, d) Participar en el proceso educativo; e) Buscar y recibir orientación sobre la educación del (la) ESTUDIANTE, en los horarios diseñados por el colegio para la retroalimentación del desarrollo 
                        integral. Así mismo se obligan a: a) participar de las reuniones de cada periodo académico, en los días y horas señalados para ello por el colegio. b) Pagar estricta y cumplidamente los costos del servicio educativo, entre ellos 
                        las pensiones dentro de los CINCO (5) primeros días de cada mes; c) Proporcionar al ESTUDIANTE ambiente adecuado para su desarrollo integral; d) velar por el progreso del ESTUDIANTE en todos los órdenes; e) cumplir y responder 
                        estrictamente las citas, llamadas, actividades extracurriculares, reuniones de padres y a las que sean convocados por las directivas del plantel ;y, f) Informar por escrito y de manera inmediata al COLEGIO cualquier cambio en 
                        su dirección o teléfono de residencia o de la empresa donde laboran. g) Tener afiliado al ESTUDIANTE a un régimen de salud e informar al Colegio cualquier cambio que de empresa prestadora se haga durante la vigencia de este contrato. 
                        h) informar de manera inmediata y por escrito a la administración del colegio sobre el hecho sobreviniente que les haya impedido el cumplimiento de las obligaciones económicas contraídas con el COLEGIO a través de este contrato 
                        de matrícula, dicho escrito deberá estar acompañado de los soportes que prueben su informe. I) cumplir con el proyecto educativo institucional, demás normas y reglamentos expedidos en el COLEGIO y el MANUAL DE CONVIVENCIA, 
                        G. A cumplir con lo establecido en la Ley 1098 de 2006.
                    </p>
                    
                    <p  style="text-align: justify; font-size:75%"><b>OCTAVA-DERECHOS Y OBLIGACIONES DEL (LA) ESTUDIANTE: </b>En cumplimiento de las normas vigentes para el servicio educativo y en concordancia con el objeto del presente contrato, el (la) 
                        ESTUDIANTE tiene derecho a: a) recibir una educación integral acorde con los principios que inspiran el PEI, b. Ser valorado y respetado como persona; c. Participar en el desarrollo del servicio educativo a través de los 
                        programas y proyectos establecidos por el COLEGIO; d, recibir de directivos y profesores buen empleo, acompañamiento, estímulo y atención y a ser escuchado oportunamente; y e. Participar en las instancias establecidas en 
                        el MANUAL DE CONVIVENCIA y demás normas y reglamentos establecidos por el COLEGIO, Así mismo El (la) ESTUDIANTE se obliga a: a) cumplir, respetar y acatar el MANUAL DE CONVIVENCIA y demás normas y reglamentos establecidos 
                        por EL COLEGIO y los principios que orientan el PEI b) Respetar y valorar a todas las personas que constituyen la comunidad educativa. C) Enaltecer con sus actuaciones y expresiones el buen nombre del COLEGIO; y 
                        d) Asistir puntual, respetuosa y decorosamente a las clases y actividades curriculares y extracurriculares que programe el COLEGIO.
                    </p>

                    <br>
                    <div class="table-responsive">
                    
                            <table border="1" width="100%" cellspacing="0">
                                <tr rowspan="3">
                                    <td  
                                        class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                                    </td>
                                    <td  colspan="5" align="center">
                                    COLEGIO TALENTOS<br>
                                    CONTRATO DE PRESTACION DE SERVICIOS<br>
                                    Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
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
                                            <TD style ="font-size:60%">Página 3 de 5</TD>
                                        </TR>
                                    </table>
                                    </td>
                                    
                                    <td class="border"><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br>
                    <div>
                    <p  style="text-align: justify; font-size:75%"><b>NOVENA: DERECHOS Y OBLIGACIONES DEL COLEGIO: </b>En cumplimiento de las normas vigentes para el servicio educativo y en concordancia con el objeto del presente contrato, el COLEGIO tiene 
                        derecho a: a. Exigir el cumplimiento del MANUAL DE CONVIVENCIA y demás normas y reglamentos establecidos por EL COLEGIO por parte del (la) ESTUDIANTE y de sus padres de familia y/o acudientes y de los deberes 
                        académicos que derivan del servicio. b. Exigir a los PADRES DE FAMILIA Y/O ACUDIENTES el cumplimiento de sus obligaciones como responsables del (la) ESTUDIANTE, c. Recuperar los costos incurridos en el servicio y a exigir 
                        y lograr el pago de los derechos correspondientes a matricula, pensión y otros cobros, por todos los medios lícitos a su alcance en ejercicio de sus derechos, y que se la han asignado a éste; y d. Reservarse el derecho de 
                        NO RENOVACION de matrícula según estipulaciones del MANUAL DE CONVIVENCIA y demás normas y reglamentos establecidos por el COLEGIO y por razones de comportamiento, rendimiento o cambio de ambiente escolar y por 
                        incumplimiento del presente contrato. <b>Así mismo el COLEGIO se obliga a:</b> a) ofrecer una educación integral de acuerdo con los fines de la educación colombiana y el ideario del Proyecto Educativo Institucional; 
                        b. Desarrollar los planes y programas establecidos mediante el Proyecto Educativo Institucional; c. Cumplir y exigir el cumplimiento del MANUAL DE CONVIVENCIA y demás normas y reglamentos establecidos por el COLEGIO. 
                        d. Prestar en forma regular el servicio educativo contratado dentro de las prescripciones legales.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>PARAGRAFO:</b>Los PADRES DE FAMILIA Y/O ACUDIENTES son los responsables por daños, lesiones personales o accidentes provocados por el ESTUDIANTE, así mismo, a sus compañeros, al personal 
                        del colegio o a los bienes del colegio o de terceros durante la prestación del servicio, para lo cual de manera mancomunada y solidaria los PADRES DE FAMILIA Y/O ACUDIENTES, asumen la responsabilidad y el 
                        pago de los mismos, como el pago de las indemnizaciones y reclamos a que haya lugar, ya que los padres o acudientes deben contribuir en la formación de su hijo haciéndole conocer el Reglamento interno o MANUAL DE CONVIVENCIA, 
                        demás normas y reglamentos establecidos por el COLEGIO, sus derechos, deberes, responsabilidades como individuo que forma parte de una comunidad educativa. Por tanto, los padres de familia y/o acudientes expresamente 
                        manifiestan que excluyen de cualquier tipo de responsabilidad al COLEGIO por cualquier evento de los que trata el presente parágrafo.
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>DECIMA: DEVOLUCIONES Y REINTEGROS:</b>A) DE MATRICULA: Cuando los PADRES DE FAMILIA Y/O ACUDIENTES hayan pagado lo correspondiente a la matrícula y este no ingrese a estudiar, el COLEGIO, 
                        previa solicitud por escrita de los PADRES Y/O ACUDIENTES devolverá el 50% de los correspondiente a este rubro, de conformidad con la resolución 14055 del 11 de octubre de 1989 del Ministerio de Educación. 
                        Si el ESTUDIANTE se encuentra ya estudiando y se retira de la institución, no habrá lugar a ningún tipo de reintegro económico por este concepto.
                    </p>

                    <p  style="text-align: justify; font-size:75%">B) PENSIONES: cuando los PADRES Y/O ACUDIENTES hayan pagado de manera anticipada el monto de las pensiones escolares y por motivos disciplinarios será retirado el ESTUDIANTE del 
                        plantel educativo o por retiro voluntario, requieran la devolución de las pensiones pagadas anticipadamente, sobre periodos en que el COLEGIO no prestara sus servicios educativos, deberán solicitarlo por escrito, 
                        el COLEGIO hará la devolución respectiva descontando el CINCO (5%) por concepto de gastos administrativos. 
                    </p>

                    <p  style="text-align: justify;">Estipulaciones que, con la firma del contrato, son aceptadas por los PADRES y/o ACUDIENTES del ESTUDIANTE. 
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>DECIMA PRIMERA: REGULACION DE INFORMACION DE BASES DE DATOS:</b>Los padres y/o acudientes declaramos que hemos autorizado al Colegio para que publique fotos de nuestros (os) 
                        hijos (as) en objetos como agendas, plegables, carpetas, avisos, página web, folletos, periódicos escolares, boletines, talonarios, vallas, carteleras, murales, tarjetas, diapositivas, presentaciones y en 
                        general cualquier documento destinado a la comunicación interna o externa del Colegio.  Parágrafo: A la firma del presente contrato CONSENTIMOS y ACEPTAMOS la modalidad que el colegio disponga para impartir 
                        las clases, sean estas de forma presencial, virtual o bajo alternancia, conforme a los parámetros y lineamientos entregados por el Gobierno Nacional, municipal o departamental.  
                    </p>

                    <p  style="text-align: justify; font-size:75%"><b>DECIMA SEGUNDA- MANEJO DE BASES DE DATOS:</b>Sus datos personales están siendo tratados bajo lo dispuesto en la legislación vigente sobre protección de los datos personales a los 
                        que se refiere el artículo 15 de la Constitución Política de Colombia, la Ley 1266 de 2008, la Ley 1581 de 2012, el decreto 1377 de 2013, el decreto 1727 de 2009, decreto único 1074 de 2015 y demás normas que 
                        modifiquen, deroguen o sustituyan. Las partes se comprometen a proteger y a tratar de modo confidencial los datos e información proporcionada durante la ejecución de este contrato. En este sentido, las partes 
                        de obligan a cumplir adecuadamente y en todo momento las disposiciones legales relacionadas con este tema y con las que a futuro puedan promulgarse sobre la materia. Las partes se comprometen a no utilizar 
                        los datos con fin distinto al objeto del presente contrato, y a no comunicarlos a otras personas. 
                        <br><br>
                        
                      
                        <div class="table-responsive">
                    
                            <table border="1" width="100%" cellspacing="0">
                                <tr rowspan="3">
                                    <td  
                                        class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                                    </td>
                                    <td  colspan="5" align="center">
                                    COLEGIO TALENTOS<br>
                                    CONTRATO DE PRESTACION DE SERVICIOS<br>
                                    Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
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
                                            <TD style ="font-size:60%">Página 4 de 5</TD>
                                        </TR>
                                    </table>
                                    </td>
                                    
                                    <td class="border"><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <p style="text-align: justify; font-size:75%">  
                        <b>DECIMA TERCERA- ANEXOS AL CONTRATO.</b> Forman parte integral de este contrato la carta de instrucciones autorización de Pagaré y diligenciamiento de espacios en blanco, el Pagaré y la autorización para utilización de datos personales.
                      </p> <br>
                    <div style="text-align: justify; font-size:75%">
                        <b>DECIMA CUARTA: EFECTOS:</b> El presenta contrato presta merito ejecutivo y por lo tanto los PADRES y/o ACUDIENTES serán responsables y asumirán todos los costos derivados del cobro pre jurídico y jurídico que con ocasión de su incumplimiento se llevare a presentar. 
                        <br><br><b>DECIMA QUINTA-DOCUMENTOS.</b> El Proyecto Educativo Institucional, la Filosofía y el Manual de Convivencia del COLEGIO hacen parte integral el presente contrato. 
                        <br><br><b>DÉCIMA SEXTA- CAUSALES DE TERMINACIÓN.</b> El presente contrato terminará por una de las siguientes causas: a) Por la terminación del año lectivo; b) Por mutuo consentimiento de las partes; c) Por muerte, desaparición o incapacidad total o permanente del EDUCANDO (A) esta última si impide continuar estudiando o por fuerza mayor; d) Por suspensión de actividades del COLEGIO por más de 60 días, o por clausura definitiva del Establecimiento; e) Por las causales determinadas en el Manual de Convivencia de la Institución. f) Por retraso en el pago de las pensiones. 
                        <br><br><b>DECIMA SEPTIMA -DURACIÓN.</b> El presente contrato tiene vigencia por el año lectivo 2025, contados a partir del a partir del 01 del mes de febrero de 2025 hasta el 30 de noviembre de 2025 y su ejecución será sucesiva por periodos mensuales y podrá renovarse por el siguiente año siempre y cuando EL EDUCANDO Y LOS PADRES hayan cumplido estrictamente las condiciones estipuladas en el presente contrato y en el Reglamento Interno del Colegio. 
                        <br><br><b>DECIMA OCTAVA- RENOVACIÓN DEL CONTRATO.</b> De conformidad a lo ordenado en el artículo 96 Y 201 de la Ley 115 de 1994 y la Sentencia SU 624 DE 1999 de la Corte Constitucional, condicionara la renovación del contrato para el próximo año en los siguientes casos: <b>PRIMERO.</b> Incumplimiento de las obligaciones derivadas de este contrato. <b>SEGUNDO.</b> Incumplimiento de las normas y demás estipulaciones consagradas en el reglamento o manual de convivencia, por razones de comportamiento, rendimiento o de capacidades que requieran tratamiento especial. <b>TERCERO.</b> Por no estar a Paz y Salvo por todo concepto con el colegio al momento de suscribir el contrato de matrícula. CUARTO. Por morosidad, insolvencia y no pago de las obligaciones contraídas. 
                        <br><br><b>DECIMA NOVENA:</b> Los PADRES DE FAMILIA Y/O ACUDIENTES y el ESTUDIANTE excluyen de toda responsabilidad al COLEGIO por los accidentes físicos o por conmociones naturales ocurridas durante la prestación del servicio educativo. El COLEGIO sugiere, para la vigencia del año escolar de que trata el presente contrato, a los PADRES DE FAMILIA y/o ACUDIENTES amparar al (la) ESTUDIANTE con un seguro estudiantil de accidentes con atención de emergencias y urgencias.
                        <br><br><b>VIGESIMA: AUTORIZACION DE CONSULTA Y REPORTE.</b> Declaro que la información que he suministrado es verídica y doy mi consentimiento expreso e irrevocable al COLEGIO, para consultar y reportar, en cualquier tiempo, en Data Crédito o en cualquier otra central de riesgo, toda la información relevante para conocer mi desempeño como deudor, mi capacidad de pago o para valorar el riesgo futuro de concederme un crédito o servicio.
                    </p>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br>

                    <div class="table-responsive">
                    
                    <table border="1" width="100%" cellspacing="0">
                        <tr rowspan="3">
                            <td  
                                class="border"><a href=""><center><img src="https://i.ibb.co/gtNzjS7/Logo-Colegio-Talentos.jpg" alt="cropped-Recurso-2-1024x273-2" border="0"></center></a>
                            </td>
                            <td  colspan="5" align="center">
                            COLEGIO TALENTOS<br>
                            CONTRATO DE PRESTACION DE SERVICIOS<br>
                            Resolución 310-054.0901 del 14 de Noviembre de 2013<br><br>
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
                                    <TD style ="font-size:60%">Página 5 de 5</TD>
                                </TR>
                            </table>
                            </td>
                            
                            <td class="border"><a href=""><center><img src="https://i.ibb.co/TgHLjvx/Logo-tulua.jpg" alt="Logo" border="0"></center></a>
                            </td>
                        </tr>
                    </table>
                </div>

                    <p  style="text-align: justify; font-size:75%"><b>ASI MISMO EL PADRE DE FAMILIA O ACUDIENTE AUTORIZA AL COLEGIO LA NOTIFICACIÓN MEDIANTE CORREO ELECTRONICO</b>, a través del siguiente correo electrónico y/o a la siguiente dirección <b><?php echo "".$fila['correo']." - ".$fila['direccion']?> </b>. 
                    </p>

                    <p  style="text-align: justify; font-size:75%">Para todos los efectos legales las partes aceptan y definen como domicilio contractual de las mismas la ciudad de Tuluá – Valle, y recibirán notificaciones en las direcciones que indican en el pie de sus respectivas firmas. 
                    </p>
                    
                    <br>
                    <?php 
                        date_default_timezone_set('America/Los_Angeles');
                        $hoy = date('d-m-Y');
                        $dia = date('d');
                    
                        $dias = array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");
                        $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
                       
                    ?>
                    <p  style="text-align: justify; font-size:75%">Para constancia se firma en la ciudad de Tuluá – Valle el <b><?php echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y') ; ?></b>.  
                    </p>
                    <br>
                    <br>
                    <p  style="text-align: justify; font-size:75%">____________________________________<br>
                                                  <b>EL ESTUDIANTE</b>  
                    </p>
                    <br>
                    <p>____________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___________________________________<br>
                                                  <b>NOMBRE DE LA MADRE Y/O ACUDIENTE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOMBRE DEL PADRE Y/O ACUDIENTE  
                    </p>
                    <br>
                    <p>____________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___________________________________<br>
                                                  <b>CEDULA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CEDULA  
                    </p>
                    <br>
                    <p>_____________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_____________________________________<br>
                                                  <b>DIRECCIÓN DE RESIDENCIA Y CIUDAD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DIRECCIÓN DE RESIDENCIA Y CIUDAD  
                    </p>
                    <br>
                    <p>______________________________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_________________________________<br>
                                                  <b>CELULAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CELULAR  
                    </p>
                    <br><br>
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
                        
                   
        </div>

    </div>
   


</body>




</html>