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
            style: "multi"
        },
        searchPanes: {
            visibleTotal:false,
            show: false
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
        dom: "BfrtipP",
        buttons: [
            {
                extend: "print",
                className: "button-print" 
            },
            {
                extend: "copy",
                className: "button-copy" 
            },
            {
                extend: "excel",
                className: "button-excel" 
            },
            {
                extend: "pdf",
                className: "button-pdf" 
            },
            {
                extend: "csv",
                className: "button-csv" 
            }
        ],
        stateSave:true,
        serveSide:true
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
    $(document).on("click", ".editar-btn", function(event) {
        event.preventDefault();
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
    $("#editarModal").on("hidden.bs.modal", function(event) {
        event.preventDefault();
        $("#editId").val("");
        $("#editCodSigma").val("");
        $("#editCodItem").val("");
        $("#editMarca").val("");
        $("#editDescripcion").val("");
    });

    // Guardar cambios de edición o agregar nuevo registro
    $("#guardarEdicion").click(function(event) {
        event.preventDefault();
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
    $("#guardar").click(function(event) {
        event.preventDefault();
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
        $("#agregarModal").on("hidden.bs.modal", function(event){
            event.preventDefault();
            $("#addCodSigma").val("");
            $("#addCodItem").val("");
            $("#addMarca").val("");
            $("#addDescripcion").val("");
        });
    });
});

