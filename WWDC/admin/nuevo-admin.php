<?php 
    include_once 'funciones/sesion.php';
    include_once 'funciones/funciones.php';
    include_once 'templates/header.php';
?>

<body  class="hold-transition skin-blue fixed sidebar-mini" data-elemento="Eventos">
    <!-- Site wrapper -->
    <div class="wrapper">
        <?php include_once 'templates/barra.php'; ?>
        <?php include_once 'templates/navegacion.php'; ?>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 class="text-center">
        Añadir Administrador
        <small>Utilice el formulario para agregar un nuevo administrador</small>
      </h1>

      
    </section>

    <!-- Main content -->
    <section class="content">
            
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Información del Administrador</h3>
                            </div>
                            <!-- /.box-header -->
                                <!-- form start -->
                                <form role="form" id="guardar-registro" action="modelo-admin.php" method="post">
                                    <div class="box-body">
                                            <div class="form-group">
                                                <label for="nombre_admin">Nombre del Administrador</label>
                                                <input type="text" class="form-control" id="nombre_admin" name="nombre_admin" placeholder="admin">
                                            </div>

                                            <div class="form-group">
                                                <label for="contraseña">Contraseña</label>
                                                <input type="password" class="form-control" id="pass_admin" name="pass_admin">
                                            </div>

                                            

                                    
                                    </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <input type="hidden" name="registro" value="nuevo">
                                        <button type="submit" name="agregar" id="agregar" class="btn btn-primary">Agregar</button>
                                    </div>
                                </form>
                            
                    </div>
                </div>
            </div> <!--.row-->  
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<?php 
    $conn->close();
  
  include_once 'templates/footer.php';
  include_once 'templates/footer-scripts.php';
?>
