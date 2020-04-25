<?php
//include_once('class/db_connect.php'); //tiene que estar en el header

class sqlMarca{

    var $con;

    function sqlMarca ($con){
        $this->con = $con;
    }

    function getMarcas(){
        $sql = "SELECT * FROM marcas";
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    function setMarca($datos){ 
    }

    function getMarca($datos){ 
    }

    function delMarca($datos){ 
    }

}

?>