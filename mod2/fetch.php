<?php
//fetch.php
include("src/php/conexion.php");
$output = '';
$sql = "SELECT * FROM ciudades WHERE id_pais = '".$_POST["countryId"]."'";
$result = mysqli_query($conexion, $sql);
$output .= '<option value="">Select State</option>';
 
while($row = mysqli_fetch_array($result))
  {
   $output .= '<option value="'.$row["id_pais"].'">'.$row["ciudad"].'</option>';
  }
  
echo $output;  
  
?>
