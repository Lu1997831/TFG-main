


  <header class="main-header">
    <!-- Logo -->
    <a href="../index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>WWDC</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>WWDC</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <?php $usuario = $_SESSION['usuario']; ?>
                  <span class="hidden-xs"><?php echo 'Sesión iniciada como <i>' . ucfirst($usuario) . '</i>'  ?></span>
                </a>
            
                    
                </ul>
            </li>
        </ul>
      </div>
    </nav>
  </header>