<?php 
require('inc/header.php');
 
?> 

<div class="container-fluid">
      
      <?php $categoriasMenu = 'Categorias';
	include('inc/side_bar.php');
	
    $categorias = new Categoria($con); 
    
    
	
	if(isset($_GET['edit'])){
            $categoria = $categorias->get($_GET['edit']); 
	} 
	?>
	  
	  
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
	  <h1 class="page-header">
            Nueva Categoria
          </h1>
  
         
            <form action="categorias.php" method="post" class="col-md-6 from-horizontal">
                <div class="form-group">
                    <label for="nombre" class="col-sm-2 control-label">Nombre</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="" value="<?php echo (isset($categoria->nombre)?$categoria->nombre:'');?>">
                    </div>
                </div> 
             
               
                 
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" name="formulario_categorias" >Guardar</button>
                    </div>
                </div> 
                <input type="hidden" class="form-control" id="id" name="id_categoria" placeholder="" value="<?php echo (isset($categoria->id_categoria)?$categoria->id_categoria:'');?>">
                <input type="hidden" class="form-control" id="id" name="id_padre" placeholder="" value="<?php echo (isset($categoria->id_padre)?$categoria->id_padre:'');?>">
            </form>
          </div>
 </div>                         
          
      </div><!--/row-->
	</div>
</div><!--/.container-->

<?php include('inc/footer.php');?>