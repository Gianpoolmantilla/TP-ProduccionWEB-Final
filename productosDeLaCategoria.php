<?php
 require_once('class/classProduct.php');
 //var_dump($id_categoria);
?>



<!-- Start Best Seller -->
<section class="lattest-product-area pb-40 category-list">
    <div class="row">
        <?php
                    // $id_categoria= $_GET['categoria'];
                 
                    $producto =new sqlProducto($con); 
                    foreach($producto->getProductos() as $row){ ?>

       
        <div class="col-md-6 col-lg-4">
            <div class="card text-center card-product">
                <div class="card-product__img">
                    <img class="card-img" src="img/product/product1.png" alt="">
                    <ul class="card-product__imgOverlay">
                        <li><button><i class="ti-search"></i></button></li>
                        <li><button><i class="ti-shopping-cart"></i></button></li>
                        <li><button><i class="ti-heart"></i></button></li>
                    </ul>
                </div>
                <div class="card-body">
                    <p><?php echo $row['nombre']?></p>
                    <h4 class="card-product__title"><a href="#">Quartz Belt Watch</a></h4>
                    <p class="card-product__price">$150.00</p>
                </div>
            </div>
        </div>
        <?php }?>

    </div>
</section>
<!-- End Best Seller -->