<?php 
Class Marca{

    /*conexion a la base*/
	private $con;
	
	public function __construct($con){
		$this->con = $con;
	}

	public function getList(){
		$query = "SELECT id_marca, descripcion 
		           FROM marc";
        return $this->con->query($query); 
	}
	
	public function get($id){
	    $query = "SELECT id_marca, descripcion 
					FROM marc 
                   where id_marca = ".$id;
        $query = $this->con->query($query); 
			
		$marca = $query->fetch(PDO::FETCH_OBJ);

        return $marca;
	}

	public function del($id){
		$query = 'SELECT count(1) as cantidad FROM prod WHERE id_marca = '.$id;
		$consulta = $this->con->query($query)->fetch(PDO::FETCH_OBJ);
		if($consulta->cantidad == 0){
			$query = "DELETE FROM marc WHERE id_marca = ".$id; 
					 

			return $this->con->exec($query); 
		}
		return 'Marca asignada a un producto';
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
            $sql = "INSERT INTO marc (".implode(',',$columns).") VALUES('".implode("','",$datos)."')";
			//echo $sql;die();
			
            $this->con->exec($sql);
		
	} 
	
	

	
	public function edit($data){
			$id = $data['id'];
			unset($data['id']);
            
            foreach($data as $key => $value){
				if(!is_array($value)){
					if($value != null){	
						$columns[]=$key." = '".$value."'"; 
					}
				}
            }
            $sql = "UPDATE marc SET ".implode(',',$columns)." WHERE id_marca = ".$id;
            //echo $sql; die();
            $this->con->exec($sql);
			 
	} 
}
?>