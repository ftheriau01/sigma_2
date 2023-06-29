<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sigma Alimetos CR</title>
    <link rel="shortcut icon" href="./img/favicon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"> -->
    <link href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.13.4/b-2.3.6/b-html5-2.3.6/r-2.4.1/sl-1.6.2/datatables.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/app.css">
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">
  <img src="./img/favicon.png" width="35" height="25" class="d-inline-block align-top" alt="">
    Sigma CR
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="https://www.sigma-alimentos.com/">Empresa<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://www.sigma-alimentos.com/codigo-de-conducta/">Codigo de conducta</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://www.sigma-alimentos.com/nuestros-valores/">Nustros valores</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          Tiendas
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Megasuper</a>
          <a class="dropdown-item" href="#">Perimercado</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
    <span class="navbar-btn">
      <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#agregarModal">Agregar Registro</button>
    </span>
  </div>
</nav>
  <div class="container-fluid my-2">
        <h1 class="text-center text-danger font-weight-bolder fw-bolder shadow-sm">Sigma-Waltmart</h1>
      <div class="table-reponsive">
        <table class="display table table-striped table-hover table-sm responsive nowrap" id="tablaProductos" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cód. Sigma</th>
                    <th>Cód. Item</th>
                    <th>Marca</th>
                    <th>Depto.</th>
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
     <div class="modal fade" id="editarModal" tabindex="-1" aria-labelledby="editarModalLabel" aria-hidden="true">
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
                          <option value="Del PRADO">Del Prado</option>
                          <option value="MONTE VERDE">Monte Verde</option>
                          <option value="LA VILLITA">La Villita</option>
                          <option value="ZURQUI">Zurqui</option>
                          <option value="FUD">Fud</option>
                          <option value="SAN RAFEL">San Rafael</option>
                          <option value="YOPLAIT">Yoplait</option>
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

      <!-- Modal para agregar registro -->
      <div class="modal fade" id="agregarModal" tabindex="-1" aria-labelledby="agregarModalLabel" aria-hidden="true">
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                    <h5 class="modal-title" id="addModalLabel">Agregar Producto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"> 
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group mb-2">
                        <label for="addCodSigma">Código Sigma:</label>
                        <input type="number" class="form-control" id="addCodSigma" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="addCodItem">Código Item:</label>
                        <input type="number" class="form-control" id="addCodItem" required>
                    </div>
                    <div class="form-group mb-2">
                        <label for="addMarca">Marca:</label>
                        <select class="form custom-select"  id="addMarca" required>
                          <option selected disabled>Seleccione una marca</option>
                          <option value="Del PRADO">Del Prado</option>
                          <option value="MONTE VERDE">Monte Verde</option>
                          <option value="LA VILLITA">La Villita</option>
                          <option value="ZURQUI">Zurqui</option>
                          <option value="FUD">Fud</option>
                          <option value="SAN RAFEL">San Rafael</option>
                          <option value="YOPLAIT">Yoplait</option>
                        </select>
                    </div>
                    <div class="form-group mb-2">
                        <label for="addDepartamento">Departamento:</label>
                        <select class="form custom-select"  id="addDepartamento" required>
                          <option selected disabled>Seleccione un Departamento</option>
                          <option value="90">90</option>
                          <option value="97">97</option>
                        </select>
                    </div>
                    <div class="form-group mb-2">
                        <label for="addDescripcion">Descripción:</label>
                        <input type="text" class="form-control" id="addDescripcion" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="guardar">Guardar Cambios</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid mt-2">
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
    <!--<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.13.4/b-2.3.6/b-html5-2.3.6/r-2.4.1/sl-1.6.2/datatables.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  </body>
</html>