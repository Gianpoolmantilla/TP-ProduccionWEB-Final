
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Dashboard with Off-canvas Sidebar</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
	
		<link href="css/styles.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	</head>
	<body> 

    <script type = "text/javascript">
  function alerta()
  {
    alert("Datos incorrectos");
    
  }  
</script>	  





    <div class="container-fluid col-4 fa-align-center text-center">
		  <form action="index.php" method="post" class=" from-horizontal">
                <div class="form-group">                   
                    <!-- <label for="usuario" class="col-sm-2 control-label"></label> -->   
                    <div class="col-sm-12">                 
                     <h4>Usuario</h4>
                        <input type="text" class="form-control " id="usuario" name="usuario" placeholder="" value="<?php echo isset($usuario->usuario)?$usuario->usuario:'';?>">                    
                </div> 
                </div> 
                 <div class="form-group">
                    <!-- <label for="calve" class="col-sm-2 control-label"></label> -->
                     <div class="col-sm-12">
                     <br>
                     <h4>Contraseña</h4>
                        <input type="password" class="form-control " id="clave" name="clave" placeholder="">
                        <br>
                    </div>
                </div>               
                <div class="form-group"> 
                <div class="col-md-12">                   
                    <br>
                    <div class="text-center">
                    <button type="submit" class="btn btn-success" name="login">Entrar</button>
                    </div>
                    </div> 
                </div> 
            </form>
            </div>

 
<!-- <?php 
// include('inc/footer.php');
?> -->