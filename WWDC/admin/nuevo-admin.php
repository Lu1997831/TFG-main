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
                                <form role="form" id="guardar-registro" action="nuevo-admin.php" method="post">
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
                                        <button type="submit" name="submit" id="agregar" class="btn btn-primary">Crear</button>
                                    </div>
                                </form>
                            
                    </div>
                </div>
            </div> <!--.row-->  

            <?php
                  if(isset($_POST['submit'])):
                        $usuario = $_POST['usuario'];
                        $password = $_POST['password'];
                        
                        if(strlen($usuario) < 5):
                              echo "El nombre de usuario debe ser más largo";
                        else:
                                
                                $opciones = array(
                                  'cost' => 12
                                );
                                
                                  $hashed_password = password_hash($password, PASSWORD_BCRYPT, $opciones);
                                
                                try {
                                  require_once('includes/funciones/bd_conexion.php');
                                  $stmt = $conn->prepare("INSERT INTO admins (usuario, hash_pass) VALUES (?,?)");
                                  $stmt->bind_param("ss", $usuario, $hashed_password);
                                  
                                  $stmt->execute();
                                  if($stmt->error):
                                    echo "<div class='mensaje error'>";
                                    echo "Hubo un error";
                                    echo "</div>";
                                  else:
                                    echo "<div class='mensaje'>";
                                    echo "Se insertó correctamente el usuario";
                                    echo "</div>";
                                  endif;    
                                  $stmt->close();
                                  $conn->close();
                                } catch(Exception $e) {
                                  echo "Error:" . $e->getMessage();
                                }
                        endif;  
                  endif;  
              
              ?>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<?php 
    $conn->close();
  
  include_once 'templates/footer.php';
  include_once 'templates/footer-scripts.php';
?>
