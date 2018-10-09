<?php
session_start();
//manejamos en sesion el nombre del usuario que se ha logeado
if (!isset($_SESSION["usuario"])){
    header("location:login.php?nologin=false");
    
}
$_SESSION["usuario"];
include("src/php/conexion.php");
 $usuario=$_SESSION["usuario"];
$registros=mysqli_query($conexion,"select monedas,pilares from seguimiento_juego where usuario='$usuario';") or
  die("Problemas en el select:".mysqli_error($conexion));

while ($reg=mysqli_fetch_array($registros))
{
	$money=$reg[0];
}


if($pilares==13 )
{
	header("location:ganaste.php");
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

<div style="color:#073655;">
  <div class="row" align="center" >
  <div class=" col-1 col-sm-1 col-md-1 col-lg-1" ></div>
    <div class="col-5 col-sm-5 col-md-5 col-lg-5" >
      </br>
	  
	  
	  <?php 
	  
	  $registros=mysqli_query($conexion,"select avatar
                        from usuarios where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/'.$reg[0].'" width="80%">';
		}
	   
	  ?>
	  </br>
    </div>
	<div class="col-5 col-sm-5 col-md-5 col-lg-5" >
      </br><p style="font-size: 15px;"></br>Continua la partida y completa cada pilarQQQQ</p></br>
    </div>
	<div class=" col-1 col-sm-1 col-md-1 col-lg-1" ></div>
  </div>
</div>

<div class="row" style="background-color: rgba(0, 0, 0, 0.05);">
	<div class=" col-2 col-sm-2 col-md-2 col-lg-2" ></div>
	<div class=" col-4 col-sm-4 col-md-4 col-lg-4" align="center">
	  <?php 
	  
	  $registros=mysqli_query($conexion,"select pilares
                        from seguimiento_juego where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/pilares'.$reg[0].'.png" width="100%">';
		}
	   
	  ?>

	</div>

<div class=" col-4 col-sm-4 col-md-4 col-lg-4" align="center">

	  <?php 
	  
	  $registros=mysqli_query($conexion,"select monedas
                        from seguimiento_juego where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/monedas'.$reg[0].'.png" width="100%">';
		}
	   
	  ?>

</div>
<div class=" col-2 col-sm-2 col-md-2 col-lg-2" ></div>

</div>

<div class="col-sm-12 col-md-12 col-lg-12" align="center"><a href="ppc.php"></br><img src="src/imagenes/btnnuevapartida.png" width="85%"></a></div>
<div class="col-sm-12 col-md-12 col-lg-12" align="center" style="color:#073655;"></br><h5>Instrucciones</h5></br></div> 





    <!-- Navigation -->


    <!-- Page Content -->

    <!-- Bootstrap core JavaScript -->

    <script src="src/jquery/jquery.min.js"></script>
    <script src="src/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
