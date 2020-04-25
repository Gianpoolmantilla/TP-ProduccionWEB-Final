<?php
//require_once 'db_connect.php';

class sqlProducto{
    var $con;

    function sqlProducto($con){
        $this->con = $con;
    }

    function getProductos(){
        $sql = "SELECT * FROM productos WHERE 1=1";
        return $sql;
    }
    
    function getMarca($id){
        $sql= " AND id_marca =".$id;
        return $sql;
    }
     
    

    function getCategoria($id){
        $sql = " AND id_categoria =".$id;
        return $sql;
    }
    
    
    function getOrderBy($order){
        switch($order){
            case 'D':
                $sql .= " ORDER BY destacado ASC";
                break;
            case 'R':
                $sql .= " ORDER BY ranking ASC";
                break;
            case 'Z':
                $sql .= " ORDER BY nombre DESC";
                break;
            default:
                $sql .= " ORDER BY nombre ASC";
        }
      
        return $sql;
    }
    
    
    function setFiltros($sql){
        return $this->con->query($sql, PDO::FETCH_ASSOC);
    }
    

    function setProducto($datos){ 
    }

    function getProducto($id){ 
    }

    function delProducto($id){ 
    }

}