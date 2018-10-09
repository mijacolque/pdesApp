<?php
session_start();
//manejamos en sesion el nombre del usuario que se ha logeado
if (!isset($_SESSION["usuario"])){
    header("location:login.php?nologin=false");
    
}
$_SESSION["usuario"];

$usuario=$_SESSION["usuario"];
 include("src/php/conexion.php");
if(isset($_POST['avatar1'])){
    
				mysqli_query($conexion, "update usuarios
								  set avatar='avatar1.png' 
								where usuario='$usuario';") or
		  die("Problemas en el select:".mysqli_error($conexion));
		  
		  header("location:index.php");
                        
      }
	  
if(isset($_POST['avatar2'])){
         /*Entra solo si se presiona el boton entrar*/
        
					mysqli_query($conexion, "update usuarios
								  set avatar='avatar2.png' 
								where usuario='$usuario';") or
		  die("Problemas en el select:".mysqli_error($conexion));
		  header("location:index.php");
                        
      }
	  
if(isset($_POST['avatar3'])){
         /*Entra solo si se presiona el boton entrar*/
        
					mysqli_query($conexion, "update usuarios
								  set avatar='avatar3.png' 
								where usuario='$usuario';") or
		  die("Problemas en el select:".mysqli_error($conexion));
		  header("location:index.php");
                        
      }

if(isset($_POST['avatar4'])){
         /*Entra solo si se presiona el boton entrar*/
        
					mysqli_query($conexion, "update usuarios
								  set avatar='avatar4.png' 
								where usuario='$usuario';") or
		  die("Problemas en el select:".mysqli_error($conexion));
		  header("location:index.php");
                        
      }
	  
if(isset($_POST['avatar5'])){
         /*Entra solo si se presiona el boton entrar*/
        
					mysqli_query($conexion, "update usuarios
								  set avatar='avatar5.png' 
								where usuario='$usuario';") or
		  die("Problemas en el select:".mysqli_error($conexion));
		  header("location:index.php");
                        
      }
	  
	  
?>

<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="src/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="src/css/juego.css" rel="stylesheet">
	 <script src="src/js/howler.js"></script>
	 
	   	 <script>

var sound = new Howl({
  src: ['src/audios/5.mp3'],
  volume: 1,
  loop:true,
  autoplay: false
});

/*sound.play();*/

</script>

  
  </head>

  <body>
<div style="background-color:#E5E5E5;color:#073655;">
  <div class="row" align="center" >
    <div class="col-12 col-sm-12 col-md-12 col-lg-12" >
      </br><h3><strong>Hola <?php echo $_SESSION["usuario"]; ?></strong></h3></br>
    </div>
  </div>
</div>


  
    <div class="row" align="center" >
			<div class="col-12 col-sm-12 col-md-12 col-lg-12" >

    </div>

			<div class="col-2 col-sm-2 col-md-2 col-lg-2" >

    </div>
<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/1.jpg" width="100%">
    </div>
	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/2.jpg" width="100%">
    </div>
		<div class="col-2 col-sm-2 col-md-2 col-lg-2" >

    </div>
	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/3.jpg" width="100%">
    </div>
	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/4.jpg" width="100%">
    </div>
		<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
			<img src="src/imagenes/pilares/5.jpg" width="100%">
    </div>
		<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/6.jpg" width="100%">
    </div>
	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/7.jpg" width="100%">
    </div>
		<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
			<img src="src/imagenes/pilares/8.jpg" width="100%">
    </div>
		<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/9.jpg" width="100%">
    </div>
	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/10.jpg" width="100%">
    </div>
		<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
			<img src="src/imagenes/pilares/11.jpg" width="100%">
    </div>
	<div class="col-2 col-sm-2 col-md-2 col-lg-2" >

    </div>
<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/12.jpg" width="100%">
    </div>
	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
		<img src="src/imagenes/pilares/13.jpg" width="100%">
    </div>
		<div class="col-2 col-sm-2 col-md-2 col-lg-2" >

    </div>
	
  </div>
  
  
</div>

<div style="color:#073655;">
  <div class="row" align="center" >
    <div class="col-12 col-sm-12 col-md-12 col-lg-12" >
      </br><h2>Escoje tu personaje favorito</h2></br>
    </div>
  </div>
</div>





    <!-- Navigation -->


    <!-- Page Content -->

    <!-- Bootstrap core JavaScript -->

    <script src="src/jquery/jquery.min.js"></script>
    <script src="src/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
