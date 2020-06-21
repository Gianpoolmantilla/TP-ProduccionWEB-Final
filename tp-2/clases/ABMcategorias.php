<?php 
Class Categoria{

    /*conexion a la base*/
	private $con;
	
	public function __construct($con){
		$this->con = $con;
	}

	public function getList(){
		$query = "SELECT id_categoria, nombre, id_padre 
                   FROM categ 
                   WHERE id_padre = 0";
        return $this->con->query($query); 
	}

	public function getListSubCategoria(){
		$query = "SELECT id_categoria, nombre 
                   FROM categ 
                   WHERE id_padre > 0";
        return $this->con->query($query); 
	}

	public function getListCategoria(){
		$query = "SELECT id_categoria, nombre 
                   FROM categ 
                   WHERE id_padre = 0";
        return $this->con->query($query); 
	}

	
	
	public function get($id){
	    $query = "SELECT id_categoria, nombre , id_padre
                   FROM categ 
                   where id_categoria = ".$id;
        $query = $this->con->query($query); 
			
		$categoria = $query->fetch(PDO::FETCH_OBJ);

        return $categoria;
	}

	public function delCategoriaPadre($id){
		$query = 'SELECT count(1) as cantidad FROM categ WHERE id_padre = '.$id;
		$consulta = $this->con->query($query)->fetch(PDO::FETCH_OBJ);
		if($consulta->cantidad == 0){
			$query = "DELETE FROM categ WHERE id_categoria = ".$id; 
					 

			 $this->con->exec($query); 
			return "Se elimino exitosamente";
		}
		return 'Categoria asignada a una subcategoria';
	}
	

	public function del($id){
		$query = 'SELECT count(1) as cantidad FROM prod WHERE id_categoria = '.$id;
		$consulta = $this->con->query($query)->fetch(PDO::FETCH_OBJ);
		if($consulta->cantidad == 0){
			$query = "DELETE FROM categ WHERE id_categoria = ".$id; 
					 

			 $this->con->exec($query); 
			 return "Se elimino exitosamente";
		}
		return 'Sub-categoria asignada a un producto';
	}
	
	/**
	* Guardo los datos en la base de datos
	*/
	public function save($data){
		
            foreach($data as $key => $value){
				
				if(!is_array($value)){
					if($value != null){
						$columns[]=$key;
						$datos[]=$value;
					}
				}
			}
			//var_dump($datos);die();
            $sql = "INSERT INTO categ (".implode(',',$columns).") VALUES('".implode("','",$datos)."')";
			//echo $sql;die();
			
            $this->con->exec($sql);
		
	} 
	

	public function edit($data){
			$id = $data['id_categoria'];
			unset($data['id_categoria']);
            
            foreach($data as $key => $value){
				if(!is_array($value)){
					if($value != null){	
						$columns[]=$key." = '".$value."'"; 
					}
				}
            }
            $sql = "UPDATE categ SET ".implode(',',$columns)." WHERE id_categoria = ".$id;
            //echo $sql; die();
            $this->con->exec($sql);
			 
	} 
}
?>