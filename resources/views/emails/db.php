<?php

$servidor = "localhost";
$usuario= "root";
$password = "";
$base_datos = "negocios";



$conexion = new mysqli($servidor, $usuario, $password, $base_datos);


function formatearFecha($fecha){
	return date('g:i a', strtotime($fecha));
}


?>