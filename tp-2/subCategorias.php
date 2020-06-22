<?php 
require('header.php'); 
?> 

<div class="container-fluid">
      
      <?php $subCategoriasMenu = 'Sub-categorias';

if(  !in_array('subcategorias',$_SESSION['usuario']['permisos'])){ 
  header('Location: index.php');
}    
	  
	 $categorias = new Categoria($con);
	include('side_bar.php');
	 
	//var_dump($_POST); die(); 
	if(isset($_POST['formulario_subcategorias'])){ 
	    if($_POST['id_categoria'] > 0){
                $categorias->edit($_POST); 
               
	    }else{
               // var_dump($_POST); die();
                $categorias->save($_POST); 
        }
		
    // header('Location: subCategorias.php');
    //echo '<script>window.location="_admin\categorias.php"';
    }
    	
    
    if(isset($_GET['delpadre'])){
        $resp = $categorias->delCategoriaPadre($_GET['delpadre']) 	;
        if($resp == 1){
         //    header('Location: subCategorias.php');
         //   echo '<script>window.location="_admin\categorias.php"';	
        }
        echo '<script>alert("'.$resp.'");</script>';

}
    
    
	if(isset($_GET['del'])){
			$resp = $categorias->del($_GET['del']) 	;
            if($resp == 1){
      //   header('Location: subCategorias.php');
     //   echo '<script>window.location="_admin\categorias.php"';		
			}
      echo '<script>alert("'.$resp.'");</script>';
      echo "<script>document.location.href='subCategorias.php';</script>\n"; 

    }
    

	

        ?>
	  
	  
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
          Sub-Categorias
          </h1>
 

         


           
          
          <a href="subCategorias_ae.php"><button type="button" class="btn btn-success" title="Agregar">Agregar</button></a>
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
						      <a href="subCategorias_ae.php?edit=<?php echo  $subCategoria['id_categoria']?>"><button type="button" class="btn btn-info" title="Modificar"><i class="far fa-edit"></i></i></button></a>
							  <a href="subcategorias.php?del=<?php echo  $subCategoria['id_categoria']?>"><button type="button" class="btn btn-danger" title="Borrar" onclick= "return ConfirmDelete()"><i class="far fa-trash-alt"></i></button></a>
					      </td>
						</tr>
				    <?php }?>                
              </tbody>
            </table>
        </div>
        

     <!-- </div> /row -->
	</div>
</div><!--/.container-->

<?php include('footer.php');?>
