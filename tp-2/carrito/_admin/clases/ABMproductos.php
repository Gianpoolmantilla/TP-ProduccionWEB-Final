<?php 
Class AMBproductos{

    /*conexion a la base*/
	private $con;	
	
	public function __construct($con){
		$this->con = $con;
	}
        /**
        * Obtengo todos los usuarios
        */
	public function getList(){
		$sql = "SELECT id_producto,nombre,descripcion 
		           FROM prod ";
       
        $resultado = $this->con->query($sql,PDO::FETCH_ASSOC);       
       // $resultado = $query->fetch(PDO::FETCH_OBJ);	
	
            return $resultado; 
	}
	
	/**
	* obtengo un usuario
	*/
	public function get($id){
	    $query = "SELECT id_usuario,nombre,apellido,email,usuario,clave,activo,salt
		           FROM usuarios WHERE id_usuario = ".$id;
        $query = $this->con->query($query); 
			
		$usuario = $query->fetch(PDO::FETCH_OBJ);
			
			$sql = 'SELECT perfil_id
					  FROM usuarios_perfiles  
					  WHERE usuarios_perfiles.usuario_id = '.$usuario->id_usuario;
					  
			foreach($this->con->query($sql) as $perfil){
				$usuario->perfiles[] = $perfil['perfil_id'];
			}
			/*echo '<pre>';
			var_dump($usuario);echo '</pre>'; */
            return $usuario;
	}
	
	
	
	

	public function edit($data){
	    $id = $data['id_usuario'];
	    unset($data['id_usuario']);
	    
            if( $data['clave'] != null){
				$user = $this->get($id);
                $data['clave'] = $this->encrypt($data['clave'],$user->salt);
            }else{
                unset($data['clave']);
			}
			
            foreach($data as $key => $value){
                if($value != null){
                    $columns[]=$key." = '".$value."'"; 
                }
            }
            $sql = "UPDATE usuarios SET ".implode(',',$columns)." WHERE id_usuario = ".$id;
            
            $this->con->exec($sql);
			
			 
			 
			$sql = 'DELETE FROM usuarios_perfiles WHERE usuario_id = '.$id;
			$this->con->exec($sql);
			
			$sql = '';
			foreach($data['perfil'] as $perfil){
				$sql .= 'INSERT INTO usuarios_perfiles(usuario_id,perfil_id) 
							VALUES ('.$id.','.$perfil.');';
			}
             $this->con->exec($sql);
        
             
	} 	

	
	
    public function del($id){
			$sql = "DELETE FROM usuarios WHERE id_usuario = ".$id.';';
			$sql .= 'DELETE FROM usuarios_perfiles WHERE usuario_id = '.$id;

        $this->con->exec($sql);
    }
		

	

		
	
}?>