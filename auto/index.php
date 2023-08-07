<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sigma Alimetos CR</title>
    <link rel="shortcut icon" href="../img/favicon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.13.4/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/r-2.4.1/rg-1.3.1/sp-2.1.2/sl-1.6.2/datatables.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../css/app.css">
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="../">
  <img src="../img/favicon.png" width="35" height="25" class="d-inline-block align-top" alt="">
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
      <li class="nav-item dropdown ">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
        <i class="bi bi-shop"></i>Tiendas
        </a>
        <div class="dropdown-menu bg-dark">
          <a class="dropdown-item bg-success text-white" href="../megasuper/index.php">Megasuper</a>
          <a class="dropdown-item bg-danger text-white" href="../peri/index.php">Perimercado</a>
          <a class="dropdown-item bg-warning text-white" href="../">Maxi-Pali</a>
        </div>
      </li>
    </ul>
    <span class="navbar-btn">
      <button class="btn btn-primary btn-sm px-2" data-toggle="modal" data-target="#agregarModal"><i class="bi bi-database-add"></i>Agregar Registro</button>
    </span>
  </div>
</nav>
<div class="container-fluid">
    <h1 class="text-center text-danger font-weight-bolder fw-bolder shadow-sm">Sigma-AutoMercado</h1>
    <div class="table-reponsive">
        <table class="display table table-striped table-hover table-sm responsive nowrap" id="tablaProductos" style="width:100%">
            <thead class="bg-secondary">
                <tr class="text-white">
                    <th>ID</th>
                    <th>Cód. Sigma</th>
                    <th>Cód. Auto</th>
                    <th>Marca</th>
                    <th>Descripción</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody >
                <!-- Aquí se cargarán los registros con AJAX -->
            </tbody>
        </table>
      </div>
</div>
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
                          <option value="DEL PRADO">Del Prado</option>
                          <option value="MONTE VERDE">Monte Verde</option>
                          <option value="LA VILLITA">La Villita</option>
                          <option value="ZURQUI">Zurqui</option>
                          <option value="FUD">Fud</option>
                          <option value="ZAR">Zar</option>
                          <option value="SAN RAFAEL">San Rafael</option>
                          <option value="FIORUCCI">Fiorucci</option>
                          <option value="LEKKERLAND">Lekkerland</option>
                          <option value="CAFE OLE">Cafe Ole</option>
                          <option value="KRAF">Kraf</option>
                          <option value="YOPLAIT">Yoplait</option>
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
                          <option value="ZAR">Zar</option>
                          <option value="SAN RAFAEL">San Rafael</option>
                          <option value="FIORUCCI">Fiorucci</option>
                          <option value="LEKKERLAND">Lekkerland</option>
                          <option value="CAFE OLE">Cafe Ole</option>
                          <option value="KRAF">Kraf</option>
                          <option value="YOPLAIT">Yoplait</option>
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

<footer class="bg-dark text-white text-center text-lg-start mt-3">
  <div class="container p-4">
    <div class="row">
      <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase">Franklin Theriault Soza.</h5>
        <p>
          Podras encontrar los codigos SAP com de ITEMS de los productos y su descripcion
          inscritos en las cadenas donde se venden.
        </p>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase">Cadenas</h5>

        <ul class="list-unstyled mb-0">
          <li>
            <a href="../megasuper/index.php" class="text-white">Megasuper</a>
          </li>
          <li>
            <a href="../peri/index.php" class="text-white">Perimercado</a>
          </li>
          <li>
            <a href="../" class="text-white">Maxi-Pali</a>
          </li>
        </ul>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase mb-0">Sigma Alimentos</h5>
        <ul class="list-unstyled">
          <li>
            <a href="https://www.sigma-alimentos.com/codigo-de-conducta/" class="text-white">Codigo de conducta</a>
          </li>
          <li>
            <a href="https://www.sigma-alimentos.com/nuestros-valores/" class="text-white">Valores</a>
          </li>
          <li>
            <a href="https://www.sigma-alimentos.com/nuestra-historia/" class="text-white">Historia</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2023 Copyright:
    <a class="text-white" href="#">Franklin Theriault S.</a>
  </div>
</footer>
    <script src="https://code.jquery.com/jquery-3.6.2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.13.4/b-2.3.6/b-colvis-2.3.6/b-html5-2.3.6/b-print-2.3.6/r-2.4.1/rg-1.3.1/sp-2.1.2/sl-1.6.2/datatables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../js/auto.js"></script>
  </body>
</html>