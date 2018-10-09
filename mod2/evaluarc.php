<?php

$respuesta=$_POST['respuesta'];
$pregunta=$_POST['pregunta'];
$usuario=$_POST['usuario'];
include("src/php/conexion.php");
				
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    
<script>
		function p1(){
		window.location="index.php";
	} 
	
		var correcto = new Howl({
  src: ['src/audios/correcto.mp3'],
  volume: 1,
  loop:true,
  autoplay: false
});

	var incorrecto = new Howl({
  src: ['src/audios/error.mp3'],
  volume: 1,
  loop:true,
  autoplay: false
});
</script>
	<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >
<?php
	
$registros=mysqli_query($conexion,"select aclaracion from preguntas_juego where id_pregunta='$pregunta'") or die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			$aclaracion=$reg[0];

		}				

	if($respuesta==1)
	
	{		$r=mysqli_query($conexion,"select pilares from seguimiento_juego where usuario='$usuario'") or die("Problemas en el select:".mysqli_error($conexion));
				while ($regq=mysqli_fetch_array($r))
			{
					$pilares=$regq[0];
			}	
		
		//	header('refresh:8; url=index.php');
			
			echo '<script>swal({
  title: "Respuesta correcta!",
  text: "'.$aclaracion.'",
  icon: "success",
  button: "Ok",
})


.then((value) => {
		  swal("Felicidades!", "Ganaste 1 pilar", "warning")
		.then((value) => {
		  p1();
		})
});
</script>';

		/*	echo '<script>swal("Respuesta correcta", "'.$aclaracion.'", "success");</script>';	*/	
				
			$pilares=$pilares+1;
			mysqli_query($conexion, "update seguimiento_juego
										  set pilares='$pilares',monedas='0' 
										where usuario='$usuario'") or
				  die("Problemas en el select:".mysqli_error($conexion));

	header("location:index.php");
	}
	
	
		if($respuesta==0)
	
	{
		//header('refresh:2; url=index.php');
		

			echo '<script>swal({
  title: "Respuesta incorrecta!",
  text: "Inténtalo de nuevo",
  icon: "error",
  button: "Ok",
})


.then((value) => {
			correcto.play();
		  p1();
		
});
</script>';
	}
	
	if($respuesta=='')
	
	{
		//header('refresh:2; url=index.php');
		

			echo '<script>swal({
  title: "Se acabo el tiempo!",
  text: "Inténtalo de nuevo",
  icon: "error",
  button: "Ok",
})


.then((value) => {
		incorrecto.play();
		  p1();
		
});
</script>';
	}
	
	
?>
</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>