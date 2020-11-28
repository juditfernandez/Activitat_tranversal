<?php
require_once '../model/participante.php';
class ParticipanteDAO {

    //CONSTRUCTOR 
    function __construct() {
    
    }

    public function insertarParticipante(){
        include "../model/conexion.php";
    try{
        $pdo->beginTransaction();
        $query="INSERT INTO `tbl_inscripcion` (`id_ins`, `fecha_ins`, `precio_ins`) VALUES (NULL, CURRENT_DATE(),'21.99');";
        $sentencia=$pdo->prepare($query);
        $sentencia->execute();
        $id_ins = $pdo->lastInsertId();

        $query1="INSERT INTO `tbl_participante` (`DNI_parti`, `nom_parti`, `apellido_parti`, `apellido2_parti`, `email_parti`, `fecha_nacimiento` ,`edad_parti`, `sexo_parti`, `id_ins`, `num_dorsal`) VALUES (?,?,?,?,?,?,?,?,?,?);";
        $sentencia1=$pdo->prepare($query1);
        $DNI=$_POST['DNI_parti'];
        $nombre=$_POST['nom_parti']; 
        $apellido=$_POST['apellido_parti'];
        $apellido2=$_POST['apellido2_parti'];
        $email=$_POST['email_parti'];
        $fecha=$_POST['fecha_nacimiento'];
        $edad=$_POST['edad'];
        $sexo=$_POST['sexo_parti'];
        $dorsal=$_POST['num_dorsal'];   
        $sentencia1->bindParam(1,$DNI);
        $sentencia1->bindParam(2,$nombre);
        $sentencia1->bindParam(3,$apellido);
        $sentencia1->bindParam(4,$apellido2);
        $sentencia1->bindParam(5,$email);
        $sentencia1->bindParam(6,$fecha);
        $sentencia1->bindParam(7,$edad);
        $sentencia1->bindParam(8,$sexo);
        $sentencia1->bindParam(9,$id_ins);
        $sentencia1->bindParam(10,$dorsal);
        $sentencia1->execute();
        //$id_persona = $pdo->lastInsertId();

        echo "todo bien";
        header("Location: ../view/inscribirse.php");
        //hacer todas las sentencias a la vez
        $pdo->commit();
        } catch (Exception $ex) {
            /* Reconocer un error y no hacer los cambios */
            $pdo->rollback();
            //header("Location: ../view/inscribirse.php");
            echo $ex->getMessage();
        
        }
    }   
}

?>