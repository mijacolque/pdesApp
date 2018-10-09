<?php
session_start();
//manejamos en sesion el nombre del usuario que se ha logeado
if (!isset($_SESSION["usuario"])){
    header("location:login.php?nologin=false");
    
}
$_SESSION["usuario"];


?>

<?php



include("src/php/conexion.php");

 $usuario=$_SESSION["usuario"];
 

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
	 
	 <script src="src/js/Winwheel.min.js"></script>
 <script src="src/js/TweenMax.min.js"></script>
  <script src="src/js/countdown.js"></script>

 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
 
	 
	   	 <script>

var sound = new Howl({
  src: ['src/audios/reloj.mp3'],
  volume: 1,
  loop:true,
  autoplay: false
});

var ssound = new Howl({
  src: ['src/audios/5.mp3'],
  volume: 0.1,
  loop:true,
  autoplay: false
});

ssound.play();

</script>

<style type="text/css">

#puntero {

	    position: absolute;
    left: 33%;
    top: 25%;
    z-index: 1;

}
</style>

  
  </head>

  <body>
<div style="background-color:rgba(0, 0, 0, 0.05);color:#073655;">
  <div class="row" align="center" >
    


	<div class="col-3 col-sm-3 col-md-3 col-lg-3" >
      
	  	  <?php 
	  
	  $registros=mysqli_query($conexion,"select avatar,usuario
                        from usuarios where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/'.$reg[0].'" width="70%">';
			echo '<p><strong>'.ucwords($reg[1]).'</strong></p>';
		}
	   
	  ?>
	  

    </div>
	
		<div class="col-3 col-sm-3 col-md-3 col-lg-3" >

	  	  <?php 
	  
	  $registros=mysqli_query($conexion,"select pilares
                        from seguimiento_juego where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/pilares'.$reg[0].'.png" width="70%">';
		}
	   
	  ?>
	  

    </div>
	
		<div class="col-3 col-sm-3 col-md-3 col-lg-3" >
    
	  	  <?php 
	  
	  $registros=mysqli_query($conexion,"select monedas
                        from seguimiento_juego where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/monedas'.$reg[0].'.png" width="70%">';
		}
	   
	  ?>
	  
	
    </div>
	
		<div class="col-3 col-sm-3 col-md-3 col-lg-3"   id="counter" style="font-size:30px;">
		<script>countdown(1);</script>
		<?php
		
			header('refresh:20; url=timeout.php');
		?>
    </div>
	
	
  </div>
</div>

</br>

<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >

<?php 
	   $np=rand(1,6);
	   
	   $pilar=$_GET['p'];
	   $nivel=1;
	 //  $pilar=5;
	$consulta='select id_pregunta from preguntas_juego where id_nivel='.$nivel.' and id_pilar='.$pilar.' and id_orden='.$np.' ';
	
	   	  $registros=mysqli_query($conexion,$consulta) or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			$pregunta=$reg[0];
			echo '<img src="src/imagenes/preguntas/'.$pregunta.'.jpg" width="100%">';
		}
	   
?>



</div>



<?php 
	   $nr1=rand(1,4);

		$nr2=rand(1,4);
		
		while($nr2==$nr1)
		{
			$nr2=rand(1,4);
		}

		$nr3=rand(1,4);
		
		while($nr3==$nr1 or $nr3==$nr2)
		{
			$nr3=rand(1,4);
		}

		$nr4=rand(1,4);
		
		while($nr4==$nr1 or $nr4==$nr2 or $nr4==$nr3)
		{
			$nr4=rand(1,4);
		}
 
?>

<?php

	$registros=mysqli_query($conexion,"select r.id_respuesta,r.id_indicador  from preguntas_juego p, respuestas_juego r where r.id_pregunta=p.id_pregunta and r.id_pregunta='$pregunta' and r.id_orden='$nr1'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			$respuesta1=$reg[0];
			$indicador1=$reg[1];
			

		}
		
	$registros=mysqli_query($conexion,"select r.id_respuesta,r.id_indicador  from preguntas_juego p, respuestas_juego r where r.id_pregunta=p.id_pregunta and r.id_pregunta='$pregunta' and r.id_orden='$nr2'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			$respuesta2=$reg[0];
			$indicador2=$reg[1];

		}
		
		$registros=mysqli_query($conexion,"select r.id_respuesta,r.id_indicador   from preguntas_juego p, respuestas_juego r where r.id_pregunta=p.id_pregunta and r.id_pregunta='$pregunta' and r.id_orden='$nr3'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			$respuesta3=$reg[0];
			$indicador3=$reg[1];

		}
		
		$registros=mysqli_query($conexion,"select r.id_respuesta,r.id_indicador   from preguntas_juego p, respuestas_juego r where r.id_pregunta=p.id_pregunta and r.id_pregunta='$pregunta' and r.id_orden='$nr4'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			$respuesta4=$reg[0];
			$indicador4=$reg[1];

		}
		
?>


<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >
	   <form action="evaluar.php" method="post">
	   <input type="hidden" name="usuario" id="usuario" value="<?php echo $usuario; ?>">
	   <input type="hidden" name="pregunta" id="pregunta" value="<?php echo $pregunta; ?>">
	  <input type="hidden" name="respuesta" id="respuesta" value="<?php echo $indicador1; ?>">
	  <input type="image" src="src/imagenes/respuestas/<?php echo $respuesta1;?>.jpg" width="100%" >
	  </form>
</div>
<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >
	   <form action="evaluar.php" method="post">
	   	   <input type="hidden" name="usuario" id="usuario" value="<?php echo $usuario; ?>">
	   <input type="hidden" name="pregunta" id="pregunta" value="<?php echo $pregunta; ?>">
	  <input type="hidden" name="respuesta" id="respuesta" value="<?php echo $indicador2; ?>">
	  <input type="image" src="src/imagenes/respuestas/<?php echo $respuesta2;?>.jpg" width="100%" >
	  </form>
</div>

<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >
	   <form action="evaluar.php" method="post">
	    <input type="hidden" name="usuario" id="usuario" value="<?php echo $usuario; ?>">
	   <input type="hidden" name="pregunta" id="pregunta" value="<?php echo $pregunta; ?>">
	  <input type="hidden" name="respuesta" id="respuesta" value="<?php echo $indicador3; ?>">
	  <input type="image" src="src/imagenes/respuestas/<?php echo $respuesta3;?>.jpg" width="100%" >
	  </form>
</div>
<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >
	   <form action="evaluar.php" method="post">
	   	   <input type="hidden" name="usuario" id="usuario" value="<?php echo $usuario; ?>">
	   <input type="hidden" name="pregunta" id="pregunta" value="<?php echo $pregunta; ?>">
	  <input type="hidden" name="respuesta" id="respuesta" value="<?php echo $indicador4; ?>">
	  <input type="image" src="src/imagenes/respuestas/<?php echo $respuesta4;?>.jpg" width="100%" >
	  </form>
</div>










    <!-- Navigation -->


    <!-- Page Content -->

    <!-- Bootstrap core JavaScript -->

    <script src="src/jquery/jquery.min.js"></script>
    <script src="src/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
