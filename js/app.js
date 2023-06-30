$(document).ready(function() {
    var tabla = $("#tablaProductos").DataTable({
        language: {
            url: "//cdn.datatables.net/plug-ins/1.13.4/i18n/es-ES.json"
        },
        responsive: true,
        ajax: {
            url: "./cargar_registros.php",
            type: "GET"
        },
        select: {
            style: "multi" // Permite la selección múltiple
        },
       // rowGroup: {
           // dataSrc: 'marca' // Reemplaza 'nombreColumnaPersonalizada' por el nombre de tu columna personalizada
        //},
        searchPanes: {
            viewTtotal:true
            //visible: false,
           // layout:'marca',
           //columns: -2 // Indica los índices de las columnas que deseas habilitar para la búsqueda en los paneles (reemplaza con los índices correctos)
        },
        columns: [
            { data: "id"},
            { data: "cod_sigma" },
            { data: "cod_item" },
            { data: "marca" },
            { data: "departamento" },
            { data: "descripcion" },
            {
                data: null,
                render: function(data, type, row) {
                    return (
                        "<button class='btn btn-sm btn-danger eliminar-btn' data-id='" +
                        row.id +
                        "'><i class='bi bi-trash3'></i>Eliminar</button> " +
                        "<button class='btn btn-sm btn-primary editar-btn' data-id='" +
                        row.id +
                        "'><i class='bi bi-pencil-square'></i>Editar</button>"
                    );
                }
            }
        ],
        dom: "BfrtipP",
        buttons: [
            {
                extend: "print",
                className: "button-print" // Clase de estilo personalizado para el botón de copiar
            },
            {
                extend: "copy",
                className: "button-copy" // Clase de estilo personalizado para el botón de copiar
            },
            {
                extend: "excel",
                className: "button-excel" // Clase de estilo personalizado para el botón de exportación a Excel
            },
            {
               extend: "pdf",
               className: "button-pdf" // Clase de estilo personalizado para el botón de exportación a PDF
            },
            {
                extend: "csv",
                className: "button-csv" // Clase de estilo personalizado para el botón de exportación a CSV
            }
        ],
        stateSave:true
    });
      
    $(document).on("click", ".eliminar-btn", function(event) {
        event.preventDefault();
        var id = $(this).data("id");
        Swal.fire({
            title: "¿Estás seguro?",
            text: "Esta acción no se puede deshacer",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#d33",
            cancelButtonColor: "#3085d6",
            confirmButtonText: "Eliminar",
            cancelButtonText: "Cancelar"
        }).then((result) => {
            if (result.isConfirmed) {
                // Realizar la eliminación del registro
                $.ajax({
                    url: "eliminar_registro.php",
                    type: "POST",
                    data: { id: id },
                    success: function(data) {
                        tabla.ajax.reload(); // Recargar la tabla después de eliminar el registro
                        Swal.fire("Eliminado", "El registro ha sido eliminado", "success");
                    },
                    error: function(xhr, status, error) {
                        Swal.fire("Error", "Ocurrió un error al eliminar el registro", "error");
                    }
                });
            }
        });
    });

    // Editar un registro
    $(document).on("click", ".editar-btn", function(event) {
        event.preventDefault();
        var id = $(this).data("id");
        var row = tabla.row($(this).closest("tr")).data();
        var codSigma = row.cod_sigma;
        var codItem = row.cod_item;
        var marca = row.marca;
        var departamento = row.departamento;
        var descripcion = row.descripcion;

        $("#editId").val(id);
        $("#editCodSigma").val(codSigma);
        $("#editCodItem").val(codItem);
        $("#editMarca").val(marca);
        $("#editDepartamento").val(departamento);
        $("#editDescripcion").val(descripcion);

        $("#editarModal").modal("show");
    });

    // Limpiar campos del formulario al cerrar el modal de editar
    $("#editarModal").on("hidden.bs.modal", function(event) {
        event.preventDefault();
        $("#editId").val("");
        $("#editCodSigma").val("");
        $("#editCodItem").val("");
        $("#editMarca").val("");
        $("#editDepartamento").val("");
        $("#editDescripcion").val("");
    });

    // Guardar cambios de edición o agregar nuevo registro
    $("#guardarEdicion").click(function(event) {
        event.preventDefault();
        var id = $("#editId").val();
        var codSigma = $("#editCodSigma").val();
        var codItem = $("#editCodItem").val();
        var marca = $("#editMarca").val();
        var departamento = $("#editDepartamento").val();
        var descripcion = $("#editDescripcion").val();

        // Realizar las validaciones necesarias

        if (!codSigma || !codItem || !descripcion) {
            Swal.fire("Error", "Por favor, completa todos los campos", "error");
            return;
        }

        if (id) {
            // Si existe un ID, es una edición
            $.ajax({
                url: "guardar_edicion.php",
                type: "POST",
                data: {
                    id: id,
                    codSigma: codSigma,
                    codItem: codItem,
                    marca: marca,
                    departamento: departamento,
                    descripcion: descripcion
                },
                success: function(data) {
                    $("#editarModal").modal("hide");
                    tabla.ajax.reload();
                }
            });
        } 
            
    });
    $("#agregarModal").on('shown.bs.modal', function () {
        $("#guardar").click(function(event) {
            event.preventDefault();
            $("#addCodSigm").focus();
            var codSigma = $("#addCodSigma").val();
            var codItem = $("#addCodItem").val();
            var marca = $("#addMarca").val();
            var departamento = $("#addDepartamento").val();
            var descripcion = $("#addDescripcion").val();

            $.ajax({
                url: "agregar_registro.php",
                type: "POST",
                data: {
                    codSigma: codSigma,
                    codItem: codItem,
                    marca: marca,
                    departamento: departamento,
                    descripcion: descripcion
                },
                success: function(data) {
                    $("#agregarModal").modal("hide");
                    tabla.ajax.reload();
                }
            });
            $("#agregarModal").on("hidden.bs.modal", function(event){
                event.preventDefault();
                $("#addCodSigma").val("");
                $("#addCodItem").val("");
                $("#addMarca").val("");
                $("#addDepartamento").val("");
                $("#addDescripcion").val("");
            });
        });
    });
});

