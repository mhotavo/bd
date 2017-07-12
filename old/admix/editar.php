 <?php 
 session_start();
 if (!isset($_SESSION['app_id'] ) and empty($_SESSION['app_id'] ) ) {
 	session_destroy();
 	header("Location: index.php");
 }

 if (isset($_GET['logout']) ) {
 	session_destroy();
 	header("Location: index.php");
 }

#require_once("seguridad.php");
 require_once("../Models/Conexion.php");

 $db= New Conexion();

 if(isset($_POST['Action']) && $_POST['Action']!='')
 { 
 	if (!isset($_POST['FAIL'])) {
 		$_POST['FAIL']='NULL';
 	}
 	$query_update = "UPDATE logs SET 
 	EMAIL='{$_POST['EMAIL']}',
 	CLAVE='{$_POST['CLAVE']}',
 	NOMBRE='{$_POST['NOMBRE']}',	
 	FAIL={$_POST['FAIL']},
 	GENERO='{$_POST['GENERO']}',
 	FECHA_NAC='{$_POST['FECHA_NAC']}',
 	CIUDAD='{$_POST['CIUDAD']}',	
 	VALORACION='{$_POST['VALORACION']}',
 	NUM_CEL='{$_POST['NUM_CEL']}',	
 	MEC='{$_POST['MEC']}'	
 	WHERE
 	ID='{$_POST['ID']}'";  
  	$update= $db->consultaRetorno($query_update);

 	?>
 	<script languaje="javascript">
 		alert("Se Han Guardado Los Datos Satisfactoriamente");
 		location.href="index.php"
//		}
</script>
<?php 	}


if(isset($_GET['DEL']) && $_GET['DEL']!='')
{ 

	$query_delete = "DELETE FROM logs WHERE ID='{$_GET['DEL']}'";   
	$delete= $db->consultaRetorno($query_delete);

	?>
	<script languaje="javascript">
		//document.getElementById("MENSAJE").style.display = "";
		alert("Se Han Eliminado Los Datos Satisfactoriamente");
		location.href="index.php"
//		}
</script>
<?php 	}

$sel= "SELECT * FROM logs WHERE  ID='".$_GET['ID']."'  ";
$query = $db->consultaRetorno($sel);
$row_query=$db->row($query);
?>
<head>
	<title>Admin</title>
	<style type="text/css">

/*
Table Style - This is what you want
------------------------------------------------------------------ */
table a:link {
	color: #666;
	font-weight: bold;
	text-decoration:none;
}
table a:visited {
	color: #999999;
	font-weight:bold;
	text-decoration:none;
}
table a:active,
table a:hover {
	color: #bd5a35;
	text-decoration:underline;
}
table {
	font-family:Arial, Helvetica, sans-serif;
	color:#666;
	font-size:14px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin:20px;
	border:#ccc 1px solid;

	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;
}
table th {
	padding:21px 25px 22px 25px;
	border-top:1px solid #fafafa;
	border-bottom:1px solid #e0e0e0;

	background: #ededed;
	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
	background: -moz-linear-gradient(top,  #ededed,  #ebebeb);
}
table th:first-child{
	text-align: right;
	padding-right:20px;
}
table tr:first-child th:first-child{
	-moz-border-radius-topleft:3px;
	-webkit-border-top-left-radius:3px;
	border-top-left-radius:3px;
}
table tr:first-child th:last-child{
	-moz-border-radius-topright:3px;
	-webkit-border-top-right-radius:3px;
	border-top-right-radius:3px;
}
table tr{

	text-align: center;
	padding-left:20px;
}
table tr td:first-child{
	text-align: left;
	padding-left:20px;
	border-left: 0;
}
table tr td {
	padding:18px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 1px solid #e0e0e0;
	
	background: #fafafa;
	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
}
table tr.even td{
	background: #f6f6f6;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
}
table tr:last-child td{
	border-bottom:0;
}
table tr:last-child td:first-child{
	-moz-border-radius-bottomleft:3px;
	-webkit-border-bottom-left-radius:3px;
	border-bottom-left-radius:3px;
}
table tr:last-child td:last-child{
	-moz-border-radius-bottomright:3px;
	-webkit-border-bottom-right-radius:3px;
	border-bottom-right-radius:3px;
}
table tr:hover td{
	background: #f2f2f2;
	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
}

/*
** Clasificacion estrellas
*/

input[type="radio"] {
	display: none;
}

label {
	color: grey;
}

.clasificacion {
	direction: rtl;
	unicode-bidi: bidi-override;
	font-size: 20px;
}

label:hover,
label:hover ~ label {
	color: orange;
}

input[type="radio"]:checked ~ label {
	color: orange;
}

</style>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function  delete1(id){
		//alert(id);
		var r = confirm("Desea eliminar este registro?");
		if (r == true) {
			txt = window.location.href='editar.php?DEL='+id; 
		}
	}


	function fechas()
	{
		var fecha = document.getElementById("FECHA_NAC");
		if(fecha.value.length == 4)
		{
			fecha.value += "-";
		}
		if(fecha.value.length == 7)
		{
			fecha.value += "-";
		}		
	}
	<?php 
	echo "function cargarDatos()";
	echo "{";
	echo "	document.getElementById('GENERO').value = '".$row_query['GENERO']."';";
	echo "	document.getElementById('CIUDAD').value = '".$row_query['CIUDAD']."';";
	echo "	document.getElementById('radio".$row_query['VALORACION']."').checked=true;";
	if ($row_query['MEC']==1) 
	{
		echo "document.getElementById('MEC').checked=true";
	}
	if ($row_query['FAIL']==1) 
	{
		echo "document.getElementById('FAIL').checked=true";
	}			
	echo "}";

	?>

</script>
</head>
<body onload="cargarDatos()">
	<div class="container">
		<form method="POST" action="editar.php" >
			<table cellspacing='0' class="table"> <!-- cellspacing='0' is important, must stay -->

				<thead>
					<tr>
						<td colspan="8">
							<div align="left">
								<button type="button" class="btn btn-default" aria-label="Left Align" onclick="window.location.href='index.php'">
									<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>
								</button>
							</div> 
						</td>
					</tr>

				</thead>
				<tbody>


					<tr align="center" style="text-align:center;">
						<td align="center"  style="text-align:center;" colspan="3">ID <?php echo $row_query['ID'];?></td>
					</tr>
					<tr>
						<th align="right" width="30%" >NOMBRE</th>
						<td align="left"  style="font-weight: bold;">
							<input type="text"  class="form-control" id="NOMBRE" name="NOMBRE" value="<?php echo strtoupper($row_query['NOMBRE']) ; ?>" placeholder="Nombre">
						</td>	
						<td width="15%"></td>			
					</tr>
					<tr>
						<th align="right">FECHA DE NACIMIENTO</th>
						<td align="left"  style="font-weight: bold;">
							<input type="text"  class="form-control" id="FECHA_NAC" name="FECHA_NAC" onkeypress="fechas();" maxlength="10" value="<?php echo strtoupper($row_query['FECHA_NAC']) ; ?>" placeholder="AAAA-MM-DD">
						</td>
						<td width="15%"></td>				
					</tr>			
					<tr>
						<th align="right">GENERO</th>
						<td align="left"  style="font-weight: bold;">
							<select class="form-control" id="GENERO" name="GENERO">
								<option value="">[...]</option>
								<option value="F">FEMENINO </option>
								<option value="M">MASCULINO </option>
							</select>				
						</td>				
						<td width="15%"></td>
					</tr>
					<tr>
						<th align="right">CIUDAD</th>
						<td align="left"  style="font-weight: bold;">
							<select class="form-control" id="CIUDAD" name="CIUDAD">
								<option value="">[...]</option>
								<?php 
								$queryCiudades= "SELECT * FROM ciudad ";
								$ciudades = $db->consultaRetorno($queryCiudades);
								while ($rowCiudades=$db->row($ciudades)) 
								{
									echo "<option value=".$rowCiudades['COD_CIUDAD'].">".$rowCiudades['CIUDAD']."</option>";
								}
								?>
							</select>
						</td>
						<td width="15%"></td>				
					</tr>
					<tr>
						<th align="right">NRO. CELULAR</th>
						<td align="left"  style="font-weight: bold;">
							<input type="text"  class="form-control" id="NUM_CEL" name="NUM_CEL" value="<?php echo strtoupper($row_query['NUM_CEL']) ; ?>" placeholder="Celular">
						</td>				
						<td width="15%"></td>
					</tr>
			<!--<tr>
				<th align="right">VALORACION</th>
				<td align="left"  style="font-weight: bold;">
					<select class="form-control" id="VALORACION" name="VALORACION">
						<option value="">[...]</option>
						<option value="1">1 </option>
						<option value="2">2 </option>
						<option value="3">3 </option>
						<option value="4">4 </option>
						<option value="5">5 </option>																		
					</select>				
				</td>				
				<td width="15%"></td>
			</tr>												
			<tr>-->
				<th align="right">MAIL</th>
				<td align="left">
					<input type="text" class="form-control" id="EMAIL" name="EMAIL" value="<?php echo strtoupper($row_query['EMAIL']); ?>" placeholder="Email">
				</td>			
				<td width="15%"></td>	
			</tr>
			<tr>
				<th align="right">CLAVE</th>
				<td align="left">
					<input type="text" class="form-control" id="CLAVE" name="CLAVE" value="<?php echo $row_query['CLAVE']; ?>" placeholder="Clave">
				</td>
				<td width="15%"></td>				
			</tr>
			<tr>
				<th align="left">FECHALOG</th>
				<td align="left"><?php echo $row_query['FECHA'].' '.$row_query['HORA']; ?></td>
				<td width="15%"></td>
			</tr>
			<tr>
				<th align="right">VALORACION</th>
				<td align="left"  style="font-weight: bold;">
					<p class="clasificacion">
				       <input id="radio5" type="radio" name="VALORACION" value="5"><!--
				    --><label for="radio5">★</label><!--
				    --><input id="radio4" type="radio" name="VALORACION" value="4"><!--
				    --><label for="radio4">★</label><!--
				    --><input id="radio3" type="radio" name="VALORACION" value="3"><!--
				    --><label for="radio3">★</label><!--
				    --><input id="radio2" type="radio" name="VALORACION" value="2"><!--
				    --><label for="radio2">★</label><!--
				    --><input id="radio1" type="radio" name="VALORACION" value="1"><!--
				--><label for="radio1">★</label>

			</p>

		</td>				
		<td width="15%"></td>
	</tr>
	<!-- Table Row -->
	<tbody>	
		<tr>
			<td>
				<label>Contraseña Incorrecta</label>
				<input type="checkbox" name="FAIL" id="FAIL" value="1"> 
				<label>MEC</label>
				<input type="checkbox" name="MEC"  id="MEC" value="1"> 				
			</td>
			<td>	
				<button class="btn btn-success" type="submit"><i class="menu-icon icon-signout"></i>Save</a></button>
				<button type="button" class="btn btn-default" aria-label="Left Align" onclick="delete1(<?php echo $row_query['ID'] ?>);">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				</button>	
				<input  type="hidden" name="Action" value="Save">
				<input  type="hidden" name="ID" value="<?php echo $row_query['ID']; ?>">
				
			</td>
			<td width="15%"></td>
		</tr> 
	</table>

</form>





<div class="row" id="MENSAJE" NAME="MENSAJE" style="DISPLAY:NONE">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<div class="alert alert-success">
			<a href="" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Guardado</strong> Correctamente 
		</div>
	</div>
	<div class="col-md-4"></div>
</div>
</div>



</body>