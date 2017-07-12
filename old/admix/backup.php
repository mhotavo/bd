<?php
require_once("../Models/Conexion.php");
backup_tables(DB_HOST,DB_USER,DB_PASS,DB_NAME);


/* backup the db OR just a table */
//En la variable $talbes puedes agregar las tablas especificas separadas por comas:
//profesor,estudiante,clase
//O déjalo con el asterisco '*' para que se respalde toda la base de datos
function Descargar($ElFichero){ 

  $TheFile = basename($ElFichero); 

  header( "Content-Type: application/octet-stream");  
  header( "Content-Length: ".filesize($ElFichero));  
  header( "Content-Disposition: attachment; filename=".$TheFile."");  
  readfile($ElFichero);  
} 



function backup_tables($host,$user,$pass,$name,$tables = '*')
{
 $file="backup/db-backup-".date('d-m-Y').".sql" ;

  #Si existe el archivo lo eliminamos para que no se sobreescribAa
 if (file_exists($file)) {
  unlink($file);
  #echo "Eliminado";
} 


$archivo=fopen("backup/db-backup-".date('d-m-Y').".sql" ,"a") or die("Problemas en la creacion");

$link = new mysqli(
  $host,
  $user,
  $pass,
  $name
  );

   //get all of the tables
if($tables == '*')
{
  $tables = array();
  $result = $link->query("SHOW TABLES");
  while($row = mysqli_fetch_array($result))
  {
    $tables[] = $row[0];
  }
}
else
{
  $tables = is_array($tables) ? $tables : explode(',',$tables);
}

   //cycle through
foreach($tables as $table)
{
  $result = $link->query("SELECT * FROM " . $table);

  $num_fields = mysqli_num_fields($result);

    #Borrar Tablas
  $drop_tables= 'DROP TABLE '.$table.';'; 
  fputs($archivo,$drop_tables);
  fputs($archivo,"\n");
    #Crear Tablas
  $row = mysqli_fetch_array($link->query('SHOW CREATE TABLE '.$table));
  fputs($archivo,$row[1]);
  fputs($archivo,"\n \n \n");


  for ($i = 0; $i < $num_fields; $i++)
  {
    while($row = mysqli_fetch_row($result))
    {

      fputs($archivo, "INSERT INTO ".$table." VALUES(");
      for($j=0; $j<$num_fields; $j++) 
      {
        # $row[$j] = addslashes($row[$j]);
        # $row[$j] = str_replace("\n","\\n",$row[$j]);

       if (isset($row[$j])) {  fputs($archivo, "'".$row[$j]."'" ); } else {  fputs($archivo," '' "); }
       if ($j<($num_fields-1)) {  fputs($archivo,','); }
     }
     fputs($archivo, ");\n");


   }
 }

 fputs($archivo,"\n \n \n");
}
Descargar($file);
#header("Content-disposition: attachment; filename=$file");
#header("Content-type: application/octet-stream");
#readfile($file);  
}


?>