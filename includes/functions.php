<?php
if (isset($_POST['accion'])) {
    switch ($_POST['accion']) {
            //casos de registros
        case 'insert_mat':
            insert_mat();
            break;

        case 'insert_grado':
            insert_grado();
            break;

        case 'insert_esp':
            insert_esp();
            break;

        case 'insert_prof':
            insert_prof();
            break;

        case 'insert_alumno':
            insert_alumno();
            break;
        
        case 'insert_acudiente':
            insert_acudiente();
            break;

        case 'editar_profe':
            editar_profe();
            break;

        case 'editar_alumno':
            editar_alumno();
            break;
        
        case 'editar_acudiente':
            editar_acudiente();
            break;

        case 'editar_mat':
            editar_mat();
            break;

        case 'editar_grado':
            editar_grado();
            break;

        case 'editar_esp':
            editar_esp();
            break;


        case 'editar_user':
            editar_user();
            break;

            /*case 'delete':
            delete();
            break;

        case 'delete_s':
            delete_s();
            break;*/
    }
}


function insert_esp()
{
    require_once("db.php");
    extract($_POST);

    $consulta = "INSERT INTO especialidades (especialidad) VALUES ('$especialidad')";

    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insert_mat()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO materias (materia,id_profesor, per_ini, per_fin,id_grado) VALUES ('$materia','$id_profesor',
    '$per_ini','$per_fin','$id_grado')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insert_grado()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO grados (descripcion, duracion) VALUES ('$descripcion', '$duracion')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insert_prof()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO profesores (cedula, nombres, apellidos,correo,curp,edad,fecha_na, id_especialidad) 
    VALUES ('$cedula', '$nombres','$apellidos','$correo','$curp','$edad','$fecha_na', '$id_especialidad')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insert_alumno()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO alumnos (nombre, apellido,correo,telefono,curp,tipo_doc,birthdate,dpto_nac, ciu_nacimiento,fecha_exp, dpto_exp,
                                      ciu_expedicion,direccion,barrio,eps,rh,sexo,sisben,discapacidad,c_discapacidad,
                                      religion,convive,madre,padre,acudiente,parentezco,id_grado,jornada) 
    VALUES ('$nombre','$apellido','$correo','$telefono','$curp','$tipo_doc','$birthdate', '$dpto_nac','$ciu_nac','$expedicion', '$dpto_exp','$ciu_exp','$direccion',
            '$barrio','$id_eps','$rh','$sexo','$sisben','$discapacidad','$cual','$religion','$conviven','$madre','$padre','$acudiente3','$parentezco','$id_grado','$jornada')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insert_acudiente()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO acudientes (documento,tipo_doc, nombre, apellido, telefono, direccion, correo, barrio, estrato, nivel_educativo, ocupacion,
                                        tipo_empleo, medio_contacto, ciu_exp, estado ) 
    VALUES ('$documento','$tipo_doc','$nombre','$apellido','$telefono','$direccion','$correo','$barrio','$estrato','$nivel_e','$ocupacion',
            '$tipo_e','$m_contacto','$ciu_exp','Activo')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}


function editar_profe()
{
    require_once("db.php");

    extract($_POST);


    $consulta = "UPDATE profesores SET cedula = '$cedula', nombres = '$nombres', apellidos = '$apellidos', correo = '$correo',
    curp = '$curp', edad='$edad', fecha_na = '$fecha_na', id_especialidad = '$id_especialidad' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_alumno()
{
    require_once("db.php");

    extract($_POST);

    $consulta = "UPDATE alumnos 
                 SET tipo_doc = '$tipo_doc', 
                     birthdate = '$birthdate', 
                     dpto_nac = '$dpto_nac', 
                     fecha_exp = '$fecha_exp', 
                     dpto_exp = '$dpto_exp', 
                     barrio = '$barrio', 
                     eps = '$eps', 
                     rh = '$rh', 
                     sexo = '$sexo', 
                     discapacidad = '$discapacidad', 
                     convive = '$convive', 
                     parentezco = '$parentezco', 
                     id_grado = '$id_grado', 
                     jornada = '$jornada' 
                 WHERE id = '$id'";

    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_acudiente() 
{
    require_once("db.php");

    extract($_POST);

    $consulta = "UPDATE acudientes 
                 SET documento = '$documento', 
                     tipo_doc = '$tipo_doc', 
                     nombre = '$nombre', 
                     apellido = '$apellido', 
                     telefono = '$telefono', 
                     direccion = '$direccion', 
                     correo = '$correo', 
                     barrio = '$barrio' 
                 WHERE documento = '$documento'";
                 
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_mat()
{
    require_once("db.php");

    extract($_POST);


    $consulta = "UPDATE materias SET materia = '$materia', id_profesor = '$id_profesor', 
    per_ini = '$per_ini', per_fin = '$per_fin',id_grado = '$id_grado' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_grado()
{
    require_once("db.php");

    extract($_POST);


    $consulta = "UPDATE grados SET descripcion = '$descripcion',duracion = '$duracion' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_esp()
{
    require_once("db.php");

    extract($_POST);


    $consulta = "UPDATE especialidades SET especialidad = '$especialidad' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_user()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE users SET usuario = '$usuario', correo = '$correo', id_rol='$id_rol' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}
/*function delete()
{
    $id = $_POST['id'];
    require_once("db.php");


    $consulta = "DELETE FROM materias WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo 'success';
    } else {
        echo 'error';
    }
}

function delete_s()
{
    $id = $_POST['id'];
    require_once("db.php");


    $consulta = "DELETE FROM grados WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo 'success';
    } else {
        echo 'error';
    }
}
*/