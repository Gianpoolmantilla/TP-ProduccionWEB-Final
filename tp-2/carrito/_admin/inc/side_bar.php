<div class="row row-offcanvas row-offcanvas-left">
        
         <div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar" role="navigation">
           
            <ul class="nav nav-sidebar">
             
	
			 <li>Novedades<ul>			 
			 <li><a href="index.php">Home</a></li>
			  <li class="<?php echo isset($newsMenu)?'active':''?>"><a href="noticias.php">Tareas</a></li>
			  <li class="<?php echo isset($comentariosMenu)?'active':''?>"><a href="comentarios.php">Comentarios</a></li>
			 </ul></li>
			  
			  <li>Tablas y parametros<ul>			  
			  <li class="<?php echo isset($productsMenu)?'active':''?>"><a href="productos.php">Productos</a></li>
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php">Tipo de productos</a></li> 
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php">Marcas</a></li> 
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php">Categorias</a></li> 
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php">Clientes</a></li> 
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php">Lista de precio</a></li> 
			  </ul></li>
			  <li>Reportes<ul>			  
			  <li class="<?php echo isset($productsMenu)?'active':''?>"><a href="productos.php">Pedidos</a></li>
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php">Ranking de ventas por vendedor</a></li> 
			 
			  </ul></li>			  

			  <li>
			  Configuraciones
			  <ul>
			  <?php if(in_array(array('pedido.add','pedido.del','pedido.edit','pedido.see'),$_SESSION['usuario']['permisos'])){?>
					<li class="<?php echo isset($pedidosMenu)?'active':''?>"><a href="pedidos.php">Pedidos</a></li>
			  <?php }?>
			  <?php if( in_array('user.add',$_SESSION['usuario']['permisos']) ||
					in_array('user.del',$_SESSION['usuario']['permisos'])||		
					in_array('user.edit',$_SESSION['usuario']['permisos'])||
					in_array('user.see',$_SESSION['usuario']['permisos'])){?>
					<li class="<?php echo isset($userMenu)?'active':''?>"><a href="usuarios.php">Usuarios</a></li>
			  <?php }?>
			 <li class="<?php echo isset($perfilMenu)?'active':''?>"><a href="perfiles.php">Perfiles</a></li>
			 <li><a href="#">Permisos</a></li>
              <li><a href="?logout">logout</a></li>
              
			  </ul></li>
			  
            
		
			  
            </ul>
           
          
        </div><!--/span-->