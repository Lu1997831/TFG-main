$(document).ready(function() {
    // Login Form
    $('#login').on('submit', function(e)  {
        e.preventDefault();
        var datos = $(this).serializeArray();
        // console.log(datos);
        $.ajax({
            type: $(this).attr('method'),
            data: datos,
            url: "login-admin.php",
            dataType: 'json',
            success: function(data) {
                console.log(data);
                var resultado = data;
                if (resultado.resultado == 'exito') {
                    swal(
                        '¡Listo!',
                        'El administrador <b><i>' + resultado.usuario + '</b></i> ha iniciado sesión correctamente',
                        'success'
                    )
                    setTimeout(function() {
                        window.location.href = 'dashboard.php';
                    }, 1500);
                } else {
                    swal(
                        'Error',
                        'Usuario o contraseña incorrecto',
                        'error'
                    )
                }
            }
        });
    });
});