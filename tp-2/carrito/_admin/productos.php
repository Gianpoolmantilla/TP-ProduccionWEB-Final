<?php 
require('inc/header.php');
//require('clases/ABMproductos.php');
?> 

<div class="container-fluid">
      
      <?php $productsMenu = 'Productos';

  
if(  !in_array('productos',$_SESSION['usuario']['permisos'])){ 
  header('Location: index.php');
}


	include('inc/side_bar.php');
    $prod = new ABMproductos($con);
    
    if(isset($_POST['formulario_productos'])){ 
	    if($_POST['id_producto'] > 0){
                $prod->edit($_POST); 
               
	    }else{
			
                $prod->save($_POST); 
        }
		
		header('Location: productos.php');
	}	
	 
	if(isset($_GET['del'])){
    
    $prod->del($_GET['del']);
    header('Location: productos.php');

  }
  $marcas = new Marca($con);
  $categorias = new Categoria ($con);



// ///////////////////boton buscar ///////////////////////////////
if(isset($_POST['buscar'])){  

  $xnombre = $_POST['xnombre'];
  $xcategorias = $_POST['xcategorias'];
  $xmarcas= $_POST['xmarcas']; 
  $prod->filtrosProductos($xnombre,$xcategorias,$xmarcas);
  
}	else{
  $xnombre = "";
  $xcategorias = "";
  $xmarcas= "";                                
  $prod->filtrosProductos($xnombre,$xcategorias,$xmarcas);
}
/////////////////////////////////////////////////////////////

        ?>
	  
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
            <?php echo $productsMenu?>
          </h1>
          	
		  <form method="POST">
         <div class="form-group">
		      <h4>Nombre</h4>		     
              <input type="text" class="form-control" id="xnombre" name="xnombre" placeholder="" value=""><br>
              </div> 
              <div class="form-group col-md-6">
              <h4>Categoria</h4>	
              <select name="xcategorias" id="xcategorias" class="form-control ">
              <option value="">Seleccionar...</option>
              <?php  foreach($categorias-> getListSubCategoria() as $c){?>
                               
                                <option value="<?php echo $c['nombre']?>"
                                <?php 
								if(isset($producto->categoria)){
									if($c['nombre'] == $producto->categoria){
											echo ' selected="selected" ';
									}
								}?> required><?php echo $c['nombre']?>
                                </option>
                            <?php }?>
              </select>
              </div>
              <div class="form-group col-md-6">
              <h4>Marcas</h4>	
              <select name="xmarcas" id="xmarcas" class="form-control ">
              <option value="">Seleccionar...</option>
              <?php  foreach($marcas-> getList() as $l){?>
                
                                <option value="<?php echo $l['descripcion']?>"
                                <?php 
								if(isset($producto->marca)){
									if($l['descripcion'] == $producto->marca){
											echo ' selected="selected" ';
									}
								}?> required><?php echo $l['descripcion']?>
                                </option>
                            <?php }?>  
              </select>
              </div><br>
              <div class="form-group">
              <br>
              <button type="submit" class="btn btn-success" name="buscar">Buscar</button>
              </div>
			  </form>
 

          <h2 class="sub-header"><a href="productos_ae.php"><button type="button" class="btn btn-success" title="Agregar">Agregar</button></a></h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Nombre</th>
                  <th>descripcion</th>
                  <th>categoria</th>
                  <th>marca</th>
                  <th>Precio</th> 
				          <th>Acciones</th>
                </tr>
              </thead>
			  <tbody> 
              <?php               
                            
                                               
             
					foreach($prod->filtrosProductos($xnombre,$xcategorias,$xmarcas) as $producto2){ ?>
              
						<tr>
						  <td><?php echo $producto2['id_producto'];?></td>
						  <td><?php echo $producto2['nombre'];?></td> 
						  <td><?php echo $producto2['descripcion'];?></td>
              <td><?php echo $producto2['descategoria'];?></td>
              <td><?php echo $producto2['descmarca'];?></td>
              <td><?php echo $producto2['precio'];?></td>
						  <td>
						      <a href="productos_ae.php?edit=<?php echo $producto2['id_producto']?>"><button type="button" class="btn btn-info" title="Modificar"><i class="far fa-edit"></i></i></button></a>
							    <a href="productos.php?del=<?php echo $producto2['id_producto']?>"><button type="button" class="btn btn-danger" title="Borrar"><i class="far fa-trash-alt"></i></button></a>
					    </td>
						</tr>
				    <?php }?>  
						
              </tbody>
            </table>
          </div>
 
          
      </div><!--/row-->
	</div>
</div><!--/.container-->

<?php include('inc/footer.php');?>