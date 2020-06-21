<?php
//include_once('class/db_connect.php'); //tiene que estar en el header

class sqlCategoria{

    var $con;

    function sqlCategoria ($con){
        $this->con = $con;
    }

    function getCategorias($idPadre = 0){
        $sql = "SELECT * FROM categorias WHERE id_padre = ".$idPadre;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    function setCateoria($datos){ 
    }

    function getCateoria($datos){ 
    }

    function delCateoria($datos){ 
    }

}

?>