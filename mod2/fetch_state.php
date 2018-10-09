<?php
//fetch.php
include("src/php/conexion.php");
$output = '';

$sql = "SELECT * FROM ciudades WHERE pais = '".$_POST["countryId"]."'";
$result = mysqli_query($conexion, $sql);
$output .= '<option value="">Ciudad de residencia</option>';
 
while($row = mysqli_fetch_array($result))
  {
   $output .= '<option value="'.$row["ciudad"].'">'.$row["ciudad"].'</option>';
  }
  
echo $output;  
  
?>
