$(document).ready(function() {
    var tabla = $("#tablaProductos").DataTable({
        language: {
            url: "//cdn.datatables.net/plug-ins/1.13.4/i18n/es-ES.json"
        },
        responsive: true,
        ajax: {
            url: "../auto/cargar_registros.php",
            type: "GET"
        },
        select: {
            style: "multi" // Permite la selección múltiple
        },
        rowGroup: {
            dataSrc: 'marca' // Reemplaza 'nombreColumnaPersonalizada' por el nombre de tu columna personalizada
        },
        columns: [
            { data: "id" },
            { data: "sap" },
            { data: "codauto" },
            { data: "marca" },
            { data: "descrip" },
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
        dom: "Bfrtip",
        buttons: [
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
        ]
    });

    $(document).on("click", ".eliminar-btn", function() {
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
                    url: "../auto/eliminar_registro.php",
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
    $(document).on("click", ".editar-btn", function() {
        var id = $(this).data("id");
        var row = tabla.row($(this).closest("tr")).data();
        var sap = row.sap;
        var codauto = row.codauto;
        var marca = row.marca;
        var descrip = row.descrip;

        $("#editId").val(id);
        $("#editCodSigma").val(sap);
        $("#editCodItem").val(codauto);
        $("#editMarca").val(marca);
        $("#editDescripcion").val(descrip);

        $("#editarModal").modal("show");
    });

    // Limpiar campos del formulario al cerrar el modal de editar
    $("#editarModal").on("hidden.bs.modal", function() {
        $("#editId").val("");
        $("#editCodSigma").val("");
        $("#editCodItem").val("");
        $("#editMarca").val("");
        $("#editDescripcion").val("");
    });

    // Guardar cambios de edición o agregar nuevo registro
    $("#guardarEdicion").click(function() {
        var id = $("#editId").val();
        var sap = $("#editCodSigma").val();
        var codauto = $("#editCodItem").val();
        var marca = $("#editMarca").val();
        var descrip = $("#editDescripcion").val();

        // Realizar las validaciones necesarias

        if (!sap || !codauto || !descrip) {
            Swal.fire("Error", "Por favor, completa todos los campos", "error");
            return;
        }

        if (id) {
            // Si existe un ID, es una edición
            $.ajax({
                url: "../auto/guardar_edicion.php",
                type: "POST",
                data: {
                    id: id,
                    sap: sap,
                    codauto: codauto,
                    marca: marca,
                    descrip: descrip
                },
                success: function(data) {
                    $("#editarModal").modal("hide");
                    tabla.ajax.reload();
                }
            });
        } 
            
    });
    $("#guardar").click(function() {
        var sap = $("#addCodSigma").val();
        var codauto = $("#addCodItem").val();
        var marca = $("#addMarca").val();
        var descrip = $("#addDescripcion").val();

        $.ajax({
            url: "../auto/agregar_registro.php",
            type: "POST",
            data: {
                sap: sap,
                codauto: codauto,
                marca: marca,
                descrip: descrip
            },
            success: function(data) {
                $("#agregarModal").modal("hide");
                tabla.ajax.reload();
            }
        });
        $("#agregarModal").on("hidden.bs.modal", function(){
            $("#addCodSigma").val("");
            $("#addCodItem").val("");
            $("#addMarca").val("");
            $("#addDescripcion").val("");
        });
    });
});

