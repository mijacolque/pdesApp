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

 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
 
	 
	   	 <script>

var sound = new Howl({
  src: ['src/audios/5.mp3'],
  volume: 1,
  loop:true,
  autoplay: false
});

/*sound.play();*/

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
    
	<div class="col-1 col-sm-1 col-md-1 col-lg-1" >
    </div>

	<div class="col-4 col-sm-4 col-md-4 col-lg-4" >
      </br>
	  	  <?php 
	  
	  $registros=mysqli_query($conexion,"select avatar,usuario
                        from usuarios where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/'.$reg[0].'" width="80%">';
			echo '<p><strong>'.ucwords($reg[1]).'</strong></p>';
		}
	   
	  ?>
	  
	  </br>
    </div>
	
		<div class="col-3 col-sm-3 col-md-3 col-lg-3" >
      </br>
	  	  <?php 
	  
	  $registros=mysqli_query($conexion,"select pilares
                        from seguimiento_juego where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/pilares'.$reg[0].'.png" width="90%">';
		}
	   
	  ?>
	  
	  </br>
    </div>
	
		<div class="col-3 col-sm-3 col-md-3 col-lg-3" >
      </br>
	  	  <?php 
	  
	  $registros=mysqli_query($conexion,"select monedas
                        from seguimiento_juego where usuario='$usuario'") or
  die("Problemas en el select:".mysqli_error($conexion));

		while ($reg=mysqli_fetch_array($registros))
		{
			echo '<img src="src/imagenes/monedas'.$reg[0].'.png" width="90%">';
		}
	   
	  ?>
	  
	  </br>
    </div>
	
		<div class="col-1 col-sm-1 col-md-1 col-lg-1" >
    </div>
	
	
  </div>
</div>

<div class="row">


<div class=" col-12 col-sm-12 col-md-12 col-lg-12" >
<h1><img  src="src/imagenes/puntero.png" width="35%" class="img-responsive" onClick="miRuleta.startAnimation();" id="puntero"/> </h1>
<canvas id='canvas' height="450" width="450" class="col-xs-12 col-sm-12 col-lg-12"></canvas>
 
 <script>

 	var miRuleta = new Winwheel({
           'numSegments': 14, // N?mero de segmentos
           'outerRadius'    : 170, // Radio externo
		   'drawMode'          : 'segmentImage', 
            'segments':
			[
                   {'image' : 'src/imagenes/1.png',  'text' : '1'},
                   {'image' : 'src/imagenes/2.png',   'text' : '2'},
                   {'image' : 'src/imagenes/3.png',  'text' : '3'},
                   {'image' : 'src/imagenes/4.png',  'text' : '4'},
                   {'image' : 'src/imagenes/5.png', 'text' : '5'},
                   {'image' : 'src/imagenes/6.png', 'text' : '6'},
                   {'image' : 'src/imagenes/7.png',  'text' : '7'},
				   {'image' : 'src/imagenes/8.png',  'text' : '8'},
				   {'image' : 'src/imagenes/9.png',  'text' : '9'},
				   {'image' : 'src/imagenes/10.png',  'text' : '10'},
				   {'image' : 'src/imagenes/11.png',  'text' : '11'},
				   {'image' : 'src/imagenes/12.png',  'text' : '12'},
                   {'image' : 'src/imagenes/13.png', 'text' : '13'},
				   {'image' : 'src/imagenes/14.png', 'text' : 'Comodin'}
                ],
            'animation': { 
                'type': 'spinToStop', // Giro y alto
                'duration': 5, // Duraci?n de giro
                'callbackFinished': 'Mensaje()', // Funci?n para mostrar mensaje
               'callbackSound' : playSound, 
            }
         });
		 
 var audio = new Audio('src/audios/tick.mp3');  // Create audio object and load desired file.
 var audio2 = new Audio('src/audios/pin.mp3'); 
 
 var sound = new Howl({
  src: ['src/audios/tick.mp3']
});

   
   
    function playSound()
    {
        // Stop and rewind the sound (stops it if already playing).
        audio.pause();
        audio.currentTime = 0;
 
        // Play the sound.
        sound.play();
    }
	
	
       function Mensaje() {
	   
	   		audio2.play();
           var SegmentoSeleccionado = miRuleta.getIndicatedSegment();
		   swal("Pilar " + SegmentoSeleccionado.text + "!","");
			if(SegmentoSeleccionado.text==1)
			{							
				window.location="http://www.cristalab.com";
					
			}
			
						if(SegmentoSeleccionado.text==2)
			{							
				window.location="http://www.cristalab.com";
					
			}
			
			
/*swal("Here's the title!", "...and here's the text!");
		+zzzswal("Elemento seleccionado:" + SegmentoSeleccionado.text + "!");
         swal("Good job!", "You clicked the button!", "success");*/
           miRuleta.stopAnimation(false);
           miRuleta.rotationAngle = 0;
           miRuleta.draw();
           dibujarIndicador();
       }



 
 </script>

</div>


</div>

</div>

<div class="row">
<div class=" col-2 col-sm-2 col-md-2 col-lg-2" ></div>

<div class=" col-8 col-sm-8 col-md-8 col-lg-8" align="center"><img src="src/imagenes/pregunta0_ok.png" width="100%"></div>
<div class=" col-2 col-sm-2 col-md-2 col-lg-2" ></div>

</div>




    <!-- Navigation -->


    <!-- Page Content -->

    <!-- Bootstrap core JavaScript -->

    <script src="src/jquery/jquery.min.js"></script>
    <script src="src/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
