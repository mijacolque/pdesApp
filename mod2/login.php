<?php
session_start();
$valido=true;
      if(isset($_POST['entrar'])){
         /*Entra solo si se presiona el boton entrar*/
        
   
        
       include("src/php/conexion.php");
        mysqli_select_db($conexion,"pdesapp")  or die("Could not select examples"); 
         $usuario=$_POST['usuario'];
         $contrasena=$_POST['contrasena'];
         $consulta="SELECT id_usuario,usuario,contrasena FROM usuarios where usuario='$usuario' AND contrasena='$contrasena'";
         $result=mysqli_query($conexion,$consulta) or die (mysqli_error());
         $filasn= mysqli_num_rows($result);
         if ($filasn<=0 || isset($_GET['nologin']) ){
             $valido=false;
         }else{
        $rowsresult=mysqli_fetch_array($result);          
        $_SESSION['idusuario']= $rowsresult['id'];
             $valido=true;
             //guardamos en sesion el nombre del usuario 
             $_SESSION["usuario"]=$usuario;
             header("location:index.php?login=true");
         }               
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
	 
	   	 <script>

var sound = new Howl({
  src: ['src/audios/5.mp3'],
  volume: 1,
  loop:true,
  autoplay: false
});

sound.play();

</script>

  
  </head>

  <body>
  </br>
<div class="container">
  <div class="row">
    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
      <img src="src/imagenes/logojuego.png" width="100%">
    </div>
  </div>
</div>
<form action="login.php" method="post">
<div class="container">
  <div class="row">
    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
	<input type="text" class="form-control"  placeholder="Ingresa tu nombre de usuario" name="usuario" required>
    </div>
	<div class="col-12 col-sm-12 col-md-12 col-lg-12">
	</p><input  type="password" class="form-control"  placeholder="Ingresa tu contraseña" name="contrasena" required>
    </div>
	
	<div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
	  </p><input name="entrar" type="hidden" value="entrar">
		<?php if ($valido==false) {
                echo "<center>".'<p><span style="color: #ffffff;">Datos incorrectos,int&eacute;ntelo de nuevo</span></p>'."</center>";
            }?>
    </div>
	
	<div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
	<input type="image" src="src/imagenes/btnlogin.png" width="80%" onClick= "javascript:enviar_formulario()">
	</div>
	

	
	<div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
	</p><p style="color:#FFFFFF; font-size:20px;">¿Olvidaste tu contraseña?</br>Obtén ayuda</p>
    </div>

		<div class="col-12 col-sm-12 col-md-12 col-lg-12" align="center">
	<a href="registro.php"><img src="src/imagenes/btnregistrate.png" width="80%"></br></br></br></a>
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
