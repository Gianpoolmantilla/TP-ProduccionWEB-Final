<?php

class Categoria{

    var $con;

    function Categoria ($con){
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