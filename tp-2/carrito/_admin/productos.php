<?php 
require('inc/header.php');
//require('clases/ABMproductos.php');
?> 

<div class="container-fluid">
      
      <?php $productsMenu = 'Productos';
	include('inc/side_bar.php');
    $prod = new ABMproductos($con);
    
    if(isset($_POST['formulario_productos'])){ 
	    if($_POST['id'] > 0){
                $prod->edit($_POST); 
               
	    }else{
			
                $prod->save($_POST); 
        }
		
		header('Location: productos.php');
	}	
	 
	if(isset($_GET['del'])){
    $user->del($_GET['del']);
    header('Location: productos.php');

	}

        ?>
	  
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
            <?php echo $productsMenu?>
          </h1>
 

          <h2 class="sub-header">Listado <a href="productos_ae.php"><button type="button" class="btn btn-success" title="Agregar">A</button></a></h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Nombre</th>
                  <th>descripcion</th>
                  <th>Imagen</th>
                  <th>Precio</th> 
				          <th>Acciones</th>
                </tr>
              </thead>
			  <tbody> 
              <?php  	 
					foreach($prod->getList() as $producto){?>
              
						<tr>
						  <td><?php echo $producto['id_producto'];?></td>
						  <td><?php echo $producto['nombre'];?></td> 
						  <td><?php echo $producto['descripcion'];?></td>
              <td><?php echo $producto['imagen'];?></td>
              <td><?php echo $producto['precio'];?></td>
						  <td>
						      <a href="productos_ae.php?edit=<?php echo $producto['id_producto']?>"><button type="button" class="btn btn-info" title="Modificar">M</button></a>
							    <a href="productos.php?del=<?php echo $producto['id_producto']?>"><button type="button" class="btn btn-danger" title="Borrar">X</button></a>
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