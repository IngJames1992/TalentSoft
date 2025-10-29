<?php
include "../includes/header.php";
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Estudiantes Matriculados</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reporte</a>
    </div>

    <!-- Content Row -->
    <div class="row">
    
<?php
    require_once("../includes/db.php");
    $result5 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='9' ");
    $numero5 = mysqli_num_rows($result5);
?>

<!-- Pending Requests Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                    <a href="../reports/prejardin.php" target="_blank">Pre-Jardin</a></div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero5; ?></a></div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-user-tie fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
    require_once("../includes/db.php");
    $result5 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='10' ");
    $numero5 = mysqli_num_rows($result5);
?>

<!-- Pending Requests Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-dark shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                    <a href="../reports/jardin.php" target="_blank"> Jardin</a></div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero5; ?></div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-user-tie fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>


<?php
    require_once("../includes/db.php");
    $result5 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='11' OR id_grado='17' ");
    $numero5 = mysqli_num_rows($result5);

    $result5m = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='11' ");
    $numero5m = mysqli_num_rows($result5m);

    $result5t = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='17' ");
    $numero5t = mysqli_num_rows($result5t);
?>

<!-- Pending Requests Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-danger shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                    <a href="../reports/transicion.php" target="_blank">Transición</a><br>
                    <a href="../reports/transicionm.php" target="_blank">A:</a> <?php echo $numero5m; ?><br>
                    <a href="../reports/transiciont.php" target="_blank">B:</a> <?php echo $numero5t; ?>
                    
                    </div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero5; ?></div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-user-tie fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

    <?php
        require_once("../includes/db.php");
        $result1 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='1' OR id_grado='6' ");
        $numero1 = mysqli_num_rows($result1);

        $result1m = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='1' ");
        $numero1m = mysqli_num_rows($result1m);

        $result1t = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='6' ");
        $numero1t = mysqli_num_rows($result1t);


    ?>
        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            <a href="../reports/primero.php" target="_blank">Primero</a><br>
                            <a href="../reports/primerom.php" target="_blank">A:</a> <?php echo $numero1m; ?><br>
                            <a href="../reports/primerot.php" target="_blank">B:</a> <?php echo $numero1t; ?>
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero1; ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php
            require_once("../includes/db.php");
            $result2 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='2' OR id_grado='7' ");
            $numero2 = mysqli_num_rows($result2);

            $result2m = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='2'  ");
            $numero2m = mysqli_num_rows($result2m);

            $result2t = mysqli_query($conexion, "SELECT * FROM alumnos WHERE  id_grado='7' ");
            $numero2t = mysqli_num_rows($result2t);
        ?>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            <a href="../reports/segundo.php" target="_blank">Segundo</a><br>
                            <a href="../reports/segundom.php" target="_blank">A:</a> <?php echo $numero2m; ?><br>
                            <a href="../reports/segundot.php" target="_blank">B:</a> <?php echo $numero2t; ?>
                            
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero2; ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-graduate fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php
            require_once("../includes/db.php");
            $result3 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='3' OR id_grado='15' ");
            $numero3 = mysqli_num_rows($result3);

            $result3m = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='3' ");
            $numero3m = mysqli_num_rows($result3m);

            $result3t = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='15' ");
            $numero3t = mysqli_num_rows($result3t);
        ?>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                            <a href="../reports/tercero.php" target="_blank">Tercero</a><br>
                            
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $numero3; ?></div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-secret fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php
            require_once("../includes/db.php");
            $result4 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='4' OR id_grado='16' ");
            $numero4 = mysqli_num_rows($result4);

            $result4m = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='4' ");
            $numero4m = mysqli_num_rows($result4m);

            $result4t = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='16' ");
            $numero4t = mysqli_num_rows($result4t);
        ?>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-secondary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">
                            <a href="../reports/cuarto.php" target="_blank">Cuarto</a><br>
                                
                            
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero4; ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-tag fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php
            require_once("../includes/db.php");
            $result5 = mysqli_query($conexion, "SELECT * FROM alumnos WHERE id_grado='5' ");
            $numero5 = mysqli_num_rows($result5);
        ?>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                            <a href="../reports/quinto.php" target="_blank">Quinto</a></div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $numero5; ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-tie fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
    </div>

</div>
</div>

<!-- End of Main Content -->
<?php include "../includes/footer.php";
?>