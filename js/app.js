$(document).ready(function() {
    var tabla = $("#tablaProductos").DataTable({
        language: {
            url: "//cdn.datatables.net/plug-ins/1.13.4/i18n/es-ES.json"
        },
        ajax: {
            url: "./cargar_registros.php",
            type: "GET"
        },
        columns: [
            { data: "id" },
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
                        "'>Eliminar</button> " +
                        "<button class='btn btn-sm btn-primary editar-btn' data-id='" +
                        row.id +
                        "'>Editar</button>"
                    );
                }
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
    $(document).on("click", ".editar-btn", function() {
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

    // Limpiar campos del formulario al abrir el modal de agregar
    $("#editarModal").on("show.bs.modal", function() {
        $("#addCodSigma").val("");
        $("#addCodItem").val("");
        $("#addMarca").val("");
        $("#addDepartamento").val("");
        $("#addDescripcion").val("");
    });

    // Limpiar campos del formulario al cerrar el modal de editar
    $("#editarModal").on("hidden.bs.modal", function() {
        $("#editId").val("");
        $("#editCodSigma").val("");
        $("#editCodItem").val("");
        $("#editMarca").val("");
        $("#editDepartamento").val("");
        $("#editDescripcion").val("");
    });

    // Guardar cambios de edición o agregar nuevo registro
    $("#guardarEdicion").click(function() {
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
        } else {
            // Si no hay un ID, es un nuevo registro
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
        }
    });
});
