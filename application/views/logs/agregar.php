<?php $this->load->view('overall/header'); ?>
<body>
  <?php $this->load->view('overall/nav'); ?>
  <div class="container">
    <h3 align="center"> <?php echo $log[0]->NOMBRE;  ?></h3>
    <br>
    <div class="">
      <div class="col-md-2"></div>
      <div class="col-md-8">
        <?=  form_open_multipart('logs/editar/'.$log[0]->ID.'', 'class="form-horizontal"');  ?>
        <fieldset>
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Nombre</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="NOMBRE" id="NOMBRE" value="<?php echo $log[0]->NOMBRE;  ?>">
            </div>
          </div>    
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Usuario</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="EMAIL" id="EMAIL" value="<?php echo $log[0]->EMAIL;  ?>">
            </div>
          </div>    
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Clave</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="CLAVE" id="CLAVE" value="<?php echo $log[0]->CLAVE;  ?>">
            </div>
          </div>    
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Genero</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="GENERO" id="GENERO" value="<?php echo $log[0]->GENERO;  ?>">
            </div>
          </div>
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Fecha Nac.</label>
            <div class="col-md-9">
              <input type="date" class="form-control" name="FECHA_NAC" id="FECHA_NAC" value="<?php echo $log[0]->FECHA_NAC;  ?>">
            </div>
          </div>    
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Ciudad</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="CIUDAD" id="CIUDAD" value="<?php echo $log[0]->CIUDAD;  ?>">
            </div>
          </div>    
          
          <div class="form-group">
            <label for="" class="col-md-3 control-label">URL</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="URL" id="URL" value="<?php echo $log[0]->URL;  ?>">
            </div>
          </div>     
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Celular</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="NUM_CEL" id="NUM_CEL" value="<?php echo $log[0]->NUM_CEL;  ?>">
            </div>
          </div>     

          <div class="form-group">
            <label for="" class="col-md-3 control-label">Valoración</label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="VALORACION" id="VALORACION" value="<?php echo $log[0]->VALORACION;  ?>">
            </div>
          </div>  
          <div class="form-group">
            <label for="" class="col-md-3 control-label">IP</label>
            <div class="col-md-9">
              <input type="text"  readonly class="form-control" name="IP"  id="IP" value="<?php echo $log[0]->IP; ?>">
            </div>
          </div>  
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Fecha</label>
            <div class="col-md-9">
              <input type="date"  readonly class="form-control" name="FECHA"  id="FECHA" value="<?php echo $log[0]->FECHA; ?>">
              <input type="text"  readonly class="form-control" name="HORA"  id="HORA" value="<?php echo $log[0]->HORA; ?>">
            </div>
          </div>  
          <div class="form-group">
            <label for="" class="col-md-3 control-label">Contraseña Incorrecta</label>
            <div class="col-md-9">
              <input type="checkbox" name="FAIL" id="FAIL" value="1" <?php echo (!empty($log[0]->FECHA)) ? 'checked' : null ?> > 
            </div>
          </div>  
          <div class="form-group" align="center">
            <div class="col-lg-10 col-lg-offset-2">
              <button type="submit" class="btn btn-success">Guardar</button>
            </div>
          </div>
        </fieldset>
        <?=   form_close(); ?>
      </div>
      <div class="col-md-2"></div>
    </div>  
  </div>
  <?php $this->load->view('overall/footer'); ?>
  <script>
    $("#tipo").val("<?php echo $log[0]->TIPO; ?>");
  </script>


</body>
</html>   