function delete_producto(id) {   
  Swal.fire({
      title: 'Confirmar',
      text: 'Está seguro que desea eliminar?',
      icon: 'info',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Eliminar'
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire('Eliminado!','Producto Eliminado Correctamente','success').then(function() {
            window.location.href = "/delete_producto/"+id+"/";
        })
      }
    })
}

function delete_usuario(id) {   
  Swal.fire({
      title: 'Confirmar',
      text: 'Está seguro que desea eliminar?',
      icon: 'info',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Eliminar'
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire('Eliminado!','Usuario Eliminado Correctamente','success').then(function() {
            window.location.href = "/delete_usuario/"+id+"/";
        })
      }
    })
}

function activar_suscripcion() {   
  Swal.fire({
      title: 'Confirmar',
      text: 'Activar suscripción?',
      icon: 'info',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Suscribir'
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire('Suscrito!','Suscripcion Activada','success').then(function() {
            window.location.href = "/activar_suscripcion/";
        })
      }
    })
}

function mensaje(titulo,texto,icono) {
    Swal.fire({
      title: titulo,
      text: texto,
      icon: icono,
      showCancelButton: false,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'success'
    })
}
