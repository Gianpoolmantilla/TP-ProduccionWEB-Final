<div class="row row-offcanvas row-offcanvas-left">

         <div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar" role="navigation">

            <ul class="nav nav-sidebar">
			
			<a href="#menu1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Mis pendientes </a>
			<div class="collapse" id="menu1sub1"><ul>
			<?php if( in_array('comentarios',$_SESSION['usuario']['permisos'])){?>
				<li class="<?php echo isset($comentariosMenu)?'active':''?>"><a href="comentarios.php" class="list-group-item" data-parent="#menu1sub1">Comentarios</a></li>
			<?php }?>	
				</ul>
             </div>
			 <a href="#menu1sub1sub4" class="list-group-item" data-toggle="collapse" aria-expanded="false">Reportes </a>
                        <div class="collapse" id="menu1sub1sub4"> <ul>
						<li class="<?php echo isset($productsMenu)?'active':''?>"><a href="productos.php" class="list-group-item" data-parent="#menu1sub1sub4">Pedidos</a></li>
			  <li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php" class="list-group-item" data-parent="#menu1sub1sub4">Ranking de ventas por vendedor</a></li>

						</ul>
						</div>

					<a href="#menu1sub1sub2" class="list-group-item" data-toggle="collapse" aria-expanded="false">Tablas y parametros </a>
                        <div class="collapse" id="menu1sub1sub2">  
						<ul>
						
						<?php if( in_array('productos',$_SESSION['usuario']['permisos'])){?>
							<li class="<?php echo isset($productsMenu)?'active':''?>"><a href="productos.php" class="list-group-item" data-parent="#menu1sub1sub2">Productos</a></li>
						<?php }?>
						<?php if( in_array('marcas',$_SESSION['usuario']['permisos'])){?>	
			  				<li class="<?php echo isset($marcasMenu)?'active':''?>"><a href="marcas.php" class="list-group-item" data-parent="#menu1sub1sub2">Marcas</a></li>
						<?php }?>
						<?php if( in_array('categorias',$_SESSION['usuario']['permisos'])){?>	  
			  				<li class="<?php echo isset($categoriasMenu)?'active':''?>"><a href="categorias.php" class="list-group-item" data-parent="#menu1sub1sub2">Categorias</a></li>
						<?php }?>
						<?php if( in_array('subcategorias',$_SESSION['usuario']['permisos'])){?>	  
			  				<li class="<?php echo isset($categoriasMenu)?'active':''?>"><a href="SubCategorias.php" class="list-group-item" data-parent="#menu1sub1sub2">Sub-Categorias</a></li>
						<?php }?>	  
			  				<li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php" class="list-group-item" data-parent="#menu1sub1sub2">Clientes</a></li>
			  				<li class="<?php echo isset($promoMenu)?'active':''?>"><a href="promociones.php" class="list-group-item" data-parent="#menu1sub1sub2">Lista de precio</a></li>
			  			</ul>
                        </div>

						<a href="#menu1sub1sub3" class="list-group-item" data-toggle="collapse" aria-expanded="false">Configuraciones </a>
                        <div class="collapse" id="menu1sub1sub3"> <ul>
						<?php //if(in_array(array('pedido.add','pedido.del','pedido.edit','pedido.see'),$_SESSION['usuario']['permisos'])){?>
					<li class="<?php echo isset($pedidosMenu)?'active':''?>"><a href="pedidos.php" class="list-group-item" data-parent="#menu1sub1sub3">Pedidos</a></li>
			  <?php //} ?>
			  <?php if( in_array('usuarios',$_SESSION['usuario']['permisos'])){?>
					<li class="<?php echo isset($userMenu)?'active':''?>"><a href="usuarios.php" class="list-group-item" data-parent="#menu1sub1sub3">Usuarios</a></li>
			  <?php }?>
			  <?php if( in_array('perfiles',$_SESSION['usuario']['permisos'])){?>
			 <li class="<?php echo isset($perfilMenu)?'active':''?>"><a href="perfiles.php" class="list-group-item" data-parent="#menu1sub1sub3">Perfiles</a></li>
			 <?php }?>
			 <li><a href="#" class="list-group-item" data-parent="#menu1sub1sub2">Permisos</a></li>
              <!-- <li><a href="?logout" class="list-group-item" data-parent="#menu1sub1sub2">logout</a></li> -->
			  </ul>
				</div>







            </ul>


        </div><!--/span-->