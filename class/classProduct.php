<?php
//require_once 'db_connect.php';

class sqlProducto{
    var $con;

    function sqlProducto($con){
        $this->con = $con;
    }

    function getProductos(){
        $sql = "SELECT * FROM productos ";
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    
    function getMarca($id){
        $sql = "SELECT * FROM productos p         
        WHERE id_marca =".$id;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }

    function getCategoria($id){
        $sql = "SELECT * FROM productos p 
        WHERE id_categoria =".$id;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    
    function getColorProducto($id){
        $sql = "SELECT * FROM producto p 
        WHERE id_color =".$id;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    

    function setProducto($datos){ 
    }

    function getProducto($id){ 
    }

    function delProducto($id){ 
    }

}