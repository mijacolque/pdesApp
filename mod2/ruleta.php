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
  volume: 0.5,
  loop:true,
  autoplay: false
});

sound.play();


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
				
		function p1(){

		window.location="pp.php?p=1&nivel=1";
	} 
	
		function p2(){
		window.location="pp.php?p=2&nivel=1";
	} 
	
		function p3(){
		window.location="pp.php?p=3&nivel=1";
	} 
	
		function p4(){
		window.location="pp.php?p=4&nivel=1";
	} 

		function p5(){
		window.location="pp.php?p=5&nivel=1";
	} 
	
			function p6(){
		window.location="pp.php?p=6&nivel=1";
	} 
	
		function p7(){
		window.location="pp.php?p=7&nivel=1";
	} 
	
		function p8(){
		window.location="pp.php?p=8&nivel=1";
	} 
	
		function p9(){
		window.location="pp.php?p=9&nivel=1";
	} 

		function p10(){
		window.location="pp.php?p=10&nivel=1";
	}
	
			function p11(){
		window.location="pp.php?p=11&nivel=1";
	} 
	
		function p12(){
		window.location="pp.php?p=12&nivel=1";
	} 

		function p13(){
		window.location="pp.php?p=13&nivel=1";
	} 
	
			function p14(){
		window.location="ppc.php?p=0&nivel=2";
	} 
	
	 
				
				
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
				   {'image' : 'src/imagenes/14.png', 'text' : '14'}
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
					swal({
					  title: "Pilar 1",
					  text: " Erradicar la pobreza extrema.",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p1();
							
					});
			}
					
			
						if(SegmentoSeleccionado.text==2)
			{							
				 					swal({
					  title: "Pilar 2",
					  text: "  Universalización de los servicios básicos.",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p2();
							
					});
					
			}
			
						if(SegmentoSeleccionado.text==3)
			{							
				 		 					swal({
					  title: "Pilar 3",
					  text: "Salud, Educación y Deporte",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p3();
							
					});
				 
			}
			
									if(SegmentoSeleccionado.text==4)
			{							
							 		 					swal({
					  title: "Pilar 4",
					  text: "Soberanía científica y tecnológica .",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p4();
							
					});
				
				
			}
			
									if(SegmentoSeleccionado.text==5)
			{							
											 		 					swal({
					  title: "Pilar 5",
					  text: "Soberanía comunitaria y financiera",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p5();
							
					});
				
				
			}
			
									if(SegmentoSeleccionado.text==6)
			{							
					swal({
					  title: "Pilar 6",
					  text: "Soberanía productiva con diversificación",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p6();
							
					});
			}
			
									if(SegmentoSeleccionado.text==7)
			{							
									swal({
					  title: "Pilar 7",
					  text: "Soberanía sobre nuestros recursos naturales .",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p7();
							
					});
					
					
			}
			
									if(SegmentoSeleccionado.text==8)
			{							
													swal({
					  title: "Pilar 8",
					  text: "Soberanía alimentaria .",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p8();
							
					});
					
				
			}
			
									if(SegmentoSeleccionado.text==9)
			{							
																	swal({
					  title: "Pilar 9",
					  text: " Soberanía ambiental con desarrollo integral.",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p9();
							
					});
				
			}
			
									if(SegmentoSeleccionado.text==10)
			{							
																	swal({
					  title: "Pilar 10",
					  text: "  Integración complementaria de los pueblos con soberanía.",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p10();
							
					});
				
			}
									if(SegmentoSeleccionado.text==11)
			{							
					swal({
					  title: "Pilar 11",
					  text: " Soberanía y transparencia en la gestión pública.",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p11();
							
					});
				
			
			}
			
									if(SegmentoSeleccionado.text==12)
			{							
					swal({
					  title: "Pilar 12",
					  text: " Disfrute y felicidad.",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p12();
							
					});
				
			}
			
									if(SegmentoSeleccionado.text==13)
			{							
					swal({
					  title: "Pilar 13",
					  text: " Reencuentro soberano con nuestra alegría felicidad prosperidad y nuestro mar",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p13();
							
					});
				
			 } 
			 
			 if(SegmentoSeleccionado.text==14)
			{							
					swal({
					  title: "Pregunta comodin",
					  text: " Colecciona los personajes de cada pilar y se el próximo campeón PDES 2018",
					  button: "Jugar",
					})
					
					
					.then((value) => {
						
							  p14();
							
					});
				
			 } 
			
/*swal("Here's the title!", "...and here's the text!");
		+zzzswal("Elemento seleccionado:" + SegmentoSeleccionado.text + "!");
         swal("Good job!", "You clicked the button!", "success");*/
           miRuleta.stopAnimation(false);
           miRuleta.rotationAngle = 0;
           miRuleta.draw();
        
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
