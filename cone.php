<?php
	$conexion = mysqli_connect('localhost','root','','restaurante');

	if ($conexion->connect_errno) {
		echo "Error al Conectar la Base de Datos";
		exit();
	}else{
		echo "Conexion Establecida";
	}
?>