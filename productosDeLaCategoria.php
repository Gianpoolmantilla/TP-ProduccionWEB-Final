<?php
 require_once('class/classProduct.php');
 require_once('category.php');
 //var_dump($id_categoria);
?>


<!-- Start Best Seller -->
<section class="lattest-product-area pb-40 category-list">
    <div class="row">
        <?php              
              
         $producto =new sqlProducto($con);                  
                     ?>
        <?php
        if (empty($id_categoria)){ 
                        foreach($producto->getProductos() as $row){ ?>
           <div class="col-md-6 col-lg-4">
            <div class="card text-center card-product">
                <div class="card-product__img">
                    <img class="card-img" src='img/product/<?php echo $row['imagen']?>' alt="">
                    <ul class="card-product__imgOverlay">
                        <li><button><i class="ti-search"></i></button></li>
                        <li><button><i class="ti-shopping-cart"></i></button></li>
                        <li><button><i class="ti-heart"></i></button></li>
                    </ul>
                </div>
                <div class="card-body">
                    <p><?php echo $row['nombre']?></p>
                    <h4 class="card-product__title"><a href="#"><?php echo $row['descripcion']?></a></h4>
                    <p class="card-product__price">$150.00</p>
                </div>
            </div>
        </div>
        <?php }
        }else{ foreach($producto->getCategoria($id_categoria) as $row2){ ?>
        

                    <div class="col-md-6 col-lg-4">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src='img/product/<?php echo $row2['imagen']?>' alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p><?php echo $row2['nombre']?></p>
                            <h4 class="card-product__title"><a href="#"><?php echo $row2['descripcion']?></a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
           <?php }

          }?>    
        


        

    </div>
</section>
<!-- End Best Seller -->