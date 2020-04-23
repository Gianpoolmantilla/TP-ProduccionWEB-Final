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
        $sql = "SELECT * FROM marca m 
        INNER JOIN productos p 
        on m.id_marca = p.".$id;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }

    function getCategoria($id){
        $sql = "SELECT * FROM productos p 
        WHERE id_categoria =".$id;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    
    function getColorProducto($id){
        $sql = "SELECT * FROM colores c 
        INNER JOIN productos p 
        on c.id_color = p.".$id;
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    

    function setProducto($datos){ 
    }

    function getProducto($id){ 
    }

    function delProducto($id){ 
    }

}