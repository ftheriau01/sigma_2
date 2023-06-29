<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sigma Alimetos CR</title>
    <link rel="shortcut icon" href="./img/favicon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="./css/app.css">
  </head>
  <body>
  <nav class="navbar navbar-expand-lg bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand text-white fs-3 fw-bold" href="#"><img src="./img/favicon.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      Sigma CR</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ">
          <li class="nav-item">
            <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="#">Features</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="#">Pricing</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container mt-4">
        <h1 class="text-center text-primary fw-bolder">Sistema Sigma</h1>
        <div class="mb-2">
          <button class="btn btn-primary" data-toggle="modal" data-target="#editarModal">Agregar Registro</button>
        </div>
        <div class="">
        <table class="display table table-striped table-hover table-sm" id="tablaProductos" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Código Sigma</th>
                    <th>Código Item</th>
                    <th>Marca</th>
                    <th>Departament</th>
                    <th>Descripción</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody >
                <!-- Aquí se cargarán los registros con AJAX -->
            </tbody>
        </table>
      </div>
    
     <!-- Modal para editar/agregar registro -->
     <div class="modal fade" id="editarModal" tabindex="-1" role="dialog" aria-labelledby="editarModalLabel" aria-hidden="true">
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                    <h5 class="modal-title" id="editarModalLabel">Editar Producto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"> 
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="editId">
                    <div class="form-group mb-2">
                        <label for="editCodSigma">Código Sigma:</label>
                        <input type="number" class="form-control" id="editCodSigma" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="editCodItem">Código Item:</label>
                        <input type="number" class="form-control" id="editCodItem" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="editMarca">Marca:</label>
                        <select class="form custom-select"  id="editMarca" required>
                          <option selected disabled>Seleccione una marca</option>
                          <option value="Del Prado">Del Prado</option>
                          <option value="Monte Verde">Monte Verde</option>
                          <option value="La Villita">La Villita</option>
                          <option value="Zurqui">Zurqui</option>
                          <option value="Fud">Fud</option>
                          <option value="San Rafael">San Rafael</option>
                          <option value="Yoplait">Yoplait</option>
                        </select>
                    </div>
                    <div class="form-group mb-2">
                        <label for="editDepartamento">Departamento:</label>
                        <select class="form custom-select"  id="editDepartamento" required>
                          <option selected disabled>Seleccione un Departamento</option>
                          <option value="90">90</option>
                          <option value="97">97</option>
                        </select>
                    </div>
                    <div class="form-group mb-2">
                        <label for="editDescripcion">Descripción:</label>
                        <input type="text" class="form-control" id="editDescripcion" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="guardarEdicion">Guardar Cambios</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid mt-3">
  <figure class="text-center">
    <blockquote class="blockquote">
      <p>Aqui puede encontrar codigos de los productos de sigma.</p>
    </blockquote>
    <figcaption class="blockquote-footer">
      Sitio contruido por <cite title="Source Title">Franklin Theriault S.</cite>
    </figcaption>
  </figure>
</div>
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  </body>
</html>