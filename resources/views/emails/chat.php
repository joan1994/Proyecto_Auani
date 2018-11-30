<?php
	include "db.php";
	///consultamos a la base
	$consulta = "SELECT * FROM chats ORDER BY id DESC";
	$ejecutar = $conexion->query($consulta); 
	//while($fila = $ejecutar->fetch_array()) : 
	$fila = $ejecutar->fetch_array();
?>
	<div id="datos-chat">
		<span style="color: #1C62C4;"><?php echo $fila['name']; ?></span>
		<span style="color: #848484;"><?php echo $fila['message']; ?></span>
		<span style="float: right;"><?php echo formatearFecha($fila['date']); ?></span>
	</div>
	
	<?//php endwhile; ?>
