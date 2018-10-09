<?php

      if(isset($_POST['entrar'])){
         /*Entra solo si se presiona el boton entrar*/
        
   
        
       include("src/php/conexion.php");
        mysqli_select_db($conexion,"pdesapp")  or die("Could not select examples"); 
         
		 $nombrecompleto=ucwords($_POST['nombrecompleto']);
		 $email=$_POST['email'];
		 $usuario=$_POST['usuario'];
		 $contrasena=$_POST['contrasena'];
		 $sexo=$_POST['sexo'];
		 $edad=$_POST['edad'];
		 $pais=$_POST['pais'];
		 $ciudad=$_POST['ciudad'];
         
	
         
		 mysqli_query($conexion,"insert into usuarios(nombrecompleto,email,usuario,contrasena,sexo,edad,pais,ciudad,avatar) values 
                       ('$nombrecompleto','$email','$usuario','$contrasena','$sexo','$edad','$pais','$ciudad','0')")
  		or die("Problemas en el select".mysqli_error($conexion));
		
		mysqli_query($conexion,"insert into seguimiento_juego(usuario,pilares,monedas,id_visita) values 
                       ('$usuario','0','0','0')")
  		or die("Problemas en el select".mysqli_error($conexion));
		

		mysqli_close($conexion);
		


             header("location:rc.php");
                        
      }
?>

<?php

function load_country()
{
	include("src/php/conexion.php");
	$output = '';
	$sql = "SELECT * FROM paises ORDER BY pais ASC";
	$result = mysqli_query($conexion, $sql);
	
	while($row = mysqli_fetch_array($result))
	{
	 $output .= '<option value="'.$row["pais"].'">'.$row["pais"].'</option>';
	}
	
	return $output;

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
    <link href="src/css/full.css" rel="stylesheet">
	 <script src="src/js/howler.js"></script>
	 <script src="src/jquery/jquery.js"></script>
	 

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
  </br>
<div class="container">
  <div class="row">
    <div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
      <img src="src/imagenes/logojuego.png" width="80%">
    </div>
  </div>
</div>
<form action="registro.php" method="post">
<div class="container">
  <div class="row" align="center">
  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
    <div class="col-10 col-sm-10 col-md-10 col-lg-10">
	<input type="text" class="form-control"  placeholder="Nombre completo" name="nombrecompleto" required>
    </div>
	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
		    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	
	    <div class="col-10 col-sm-10 col-md-10 col-lg-10">
	</p><input type="email" class="form-control"  placeholder="Correo electrónico" name="email" required>
    </div>
		    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
		    <div class="col-10 col-sm-10 col-md-10 col-lg-10">
	</p><input type="text" class="form-control"  placeholder="Nombre de usuario" name="usuario" required>
    </div>
	  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	<div class="col-10 col-sm-10 col-md-12 col-lg-10">
	</p><input  type="password" class="form-control"  placeholder="Contraseña" name="contrasena" required>
    </div>
	  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
			    <div class="col-7 col-sm-7 col-md-7 col-lg-7">
	</p><p><span style="color: #ffffff; font-size:20px;">Sexo : <img src="src/imagenes/masculino.png" width="20%"> <input name="sexo" type="radio" value="MASCULINO"> <img src="src/imagenes/femenino.png" width="20%"> <input name="sexo" type="radio" value="FEMENINO"> </p>
    </div>

	
	    <div class="col-3 col-sm-3 col-md-3 col-lg-3">
	</br><input type="number" class="form-control"  placeholder="Edad" name="edad" max="99" min="7" required >
    </div>
	
	  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
		  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
		    <div class="col-10 col-sm-10 col-md-10 col-lg-10">
	</p>

<select name="pais" id="pais" class="custom-select">
  <option value="">Pais de residencia</option>
  <?php echo load_country(); ?>
</select>
    </div>
		  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	
		  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
		    <div class="col-10 col-sm-10 col-md-10 col-lg-10">
	</p>
<select name="ciudad" id="ciudad" class="custom-select">
  <option value="">Ciudad de residencia</option>
</select>
    </div>
		  	    <div class="col-1 col-sm-1 col-md-1 col-lg-1">
    </div>
	
	<div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
	  </p><input name="entrar" type="hidden" value="entrar">
    </div>
	
	<div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
	<input type="image" src="src/imagenes/btnregistrate.png" width="80%" onClick= "javascript:enviar_formulario()">
	</div>
	

  </div>
</div>


</form>


    <!-- Navigation -->


    <!-- Page Content -->

    <!-- Bootstrap core JavaScript -->

    <script src="src/jquery/jquery.min.js"></script>
    <script src="src/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

<script>
$(document).ready(function(){
	$('#pais').change(function(){
		var country_id=$(this).val();
		$.ajax({
			url:"fetch_state.php",
			method:"POST",
			data:{countryId:country_id},
			dataType:"text",
			success:function(data)
			{
				$('#ciudad').html(data);
			}
		
		});
	
	});
});
</script>
