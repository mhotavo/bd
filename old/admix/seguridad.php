<?php 
	mysql_select_db($nombre_db,$conexion);
    $sel="SELECT NICK_USUARIO FROM usuarios WHERE NICK_USUARIO = '".$_SESSION['usuario'] ."' AND estado='1'";
	$query = mysql_query($sel);
	if(mysql_num_rows($query) == 0 ||   $_SESSION['id_usuario']=='' ){
	     // header("Location: ../../admin/login.php?msj=2"); 	 ?>
			<script type="text/javascript">
				alert("Acceso Denegado");
				window.location="../index.php";
			</script>
	     <?php 
	   	exit(); 
	}
?>