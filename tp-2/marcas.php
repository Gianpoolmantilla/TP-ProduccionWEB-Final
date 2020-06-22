<?php 
require('header.php'); 
?> 

<div class="container-fluid">
      
	  <?php $marcasMenu = 'Marcas';

if(  !in_array('marcas',$_SESSION['usuario']['permisos'])){ 
	header('Location: index.php');
	}

	  
	 $marcas = new Marca($con);
	include('side_bar.php');
	 
	 
	if(isset($_POST['formulario_marcas'])){ 
	    if($_POST['id_marca'] > 0){
                $marcas->edit($_POST); 
               
	    }else{
			
                $marcas->save($_POST); 
        }
		
		 header('Location: marcas.php');
	}	
	 
	if(isset($_GET['del'])){
			$resp = $marcas->del($_GET['del']) 	;
            if($resp == 1){
				 header('Location: marcas.php');	
			}
			 echo '<script>alert("'.$resp.'");</script>';
			 echo "<script>document.location.href='marcas.php';</script>\n"; 
	}
	

        ?>
	  
	  
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
            Marcas
          </h1>
 

          <h2 class="sub-header"><a href="marcas_ae.php"><button type="button" class="btn btn-success" title="Agregar">Agregar</button></a></h2>
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
					foreach($marcas->getList() as $marca){?>
              
						<tr>
						  <td><?php echo $marca['id_marca'];?></td>
						  <td><?php echo $marca['descripcion'];?></td> 
						  <td>
						      <a href="marcas_ae.php?edit=<?php echo  $marca['id_marca']?>"><button type="button" class="btn btn-info" title="Modificar"><i class="far fa-edit"></i></i></button></a>
							  <a href="marcas.php?del=<?php echo  $marca['id_marca']?>"><button type="button" class="btn btn-danger" title="Borrar" onclick= "return ConfirmDelete()"><i class="far fa-trash-alt"></i></button></a>
					      </td>
						</tr>
				    <?php }?>                
              </tbody>
            </table>
          </div>
 
          
      </div><!--/row-->
	</div>
</div><!--/.container-->

<?php include('footer.php');?>