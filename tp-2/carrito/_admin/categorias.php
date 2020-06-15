<?php 
require('inc/header.php'); 
?> 

<div class="container-fluid">
      
      <?php $categoriasMenu = 'Categorias';
	  
	 $categorias = new Categoria($con);
	include('inc/side_bar.php');
	 
	//var_dump($_POST); die(); 
	if(isset($_POST['formulario_categorias'])){ 
	    if($_POST['id_categoria'] > 0){
                $categorias->edit($_POST); 
               
	    }else{
               // var_dump($_POST); die();
                $categorias->save($_POST); 
        }
		
		header('Location: categorias.php');
    }
    	
    
    if(isset($_GET['delpadre'])){
        $resp = $categorias->delCategoriaPadre($_GET['delpadre']) 	;
        if($resp == 1){
            header('Location: categorias.php');	
        }
        echo '<script>alert("'.$resp.'");</script>';

}
    
    
	if(isset($_GET['del'])){
			$resp = $categorias->del($_GET['del']) 	;
            if($resp == 1){
				header('Location: categorias.php');	
			}
			echo '<script>alert("'.$resp.'");</script>';

    }
    

	

        ?>
	  
	  
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
            Categorias
          </h1>
 

          <h2 class="sub-header">Listado </h2>
          <h2 class="sub-header">Categorias</h2><a href="categorias_ae.php?id_padre=0"><button type="button" class="btn btn-success" title="Agregar">A</button></a>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Nombre</th> 
				          <th>Acciones</th>
                </tr>
              </thead>
			  <tbody>
				<?php  	 
					foreach($categorias->getList() as $categoria){?>
              
						<tr>
						  <td><?php echo $categoria['id_categoria'];?></td>
						  <td><?php echo $categoria['nombre'];?></td> 
						  <td>
						      <a href="categorias_ae.php?edit=<?php echo   $categoria['id_categoria']?>&id_padre=<?php echo $categoria['id_padre']?>"><button type="button" class="btn btn-info" title="Modificar">M</button></a>
							  <a href="categorias.php?delpadre=<?php echo  $categoria['id_categoria']?>"><button type="button" class="btn btn-danger" title="Borrar">X</button></a>
					      </td>
						</tr>
				    <?php }?>                
              </tbody>
            </table>
          </div>


           
          
          <h2 class="sub-header"> Sub-Categorias</h2><a href="subCategorias_ae.php"><button type="button" class="btn btn-success" title="Agregar">A</button></a>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Nombre</th> 
				          <th>Acciones</th>
                </tr>
              </thead>
			  <tbody>
				<?php  	 
					foreach($categorias->getListSubCategoria() as $subCategoria){?>
              
						<tr>
						  <td><?php echo $subCategoria['id_categoria'];?></td>
						  <td><?php echo $subCategoria['nombre'];?></td> 
						  <td>
						      <a href="subCategorias_ae.php?edit=<?php echo  $subCategoria['id_categoria']?>"><button type="button" class="btn btn-info" title="Modificar">M</button></a>
							  <a href="categorias.php?del=<?php echo  $subCategoria['id_categoria']?>"><button type="button" class="btn btn-danger" title="Borrar">X</button></a>
					      </td>
						</tr>
				    <?php }?>                
              </tbody>
            </table>
        </div>
        

     <!-- </div> /row -->
	</div>
</div><!--/.container-->

<?php include('inc/footer.php');?>
