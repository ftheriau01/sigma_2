$(document).ready(function() {
    var tabla = $("#tablaProductos").DataTable({
        language: {
            url: "//cdn.datatables.net/plug-ins/1.13.4/i18n/es-ES.json"
        },
        responsive: false,
        scrollX: true,
        ajax: {
            url: "./cargar_registros.php",
            type: "GET"
        },
        select: {
            style: "multi"
        },
        searchPanes: {
            visibleTotal:false,
            show: false,
            initCollapsed: true,
            className: "btn btn-primary"
        },
        //stateSave:true,
        //filter:true,
        pageLength : 10,
        page:15,
        info:false,
        order: [[1,"desc"]],
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
        ]
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
                $.ajax({
                    url: "eliminar_registro.php",
                    type: "POST",
                    data: { id: id },
                    success: function(data) {
                        tabla.ajax.reload(); 
                        Swal.fire("Eliminado", "El registro ha sido eliminado", "success");
                    },
                    error: function(xhr, status, error) {
                        Swal.fire("Error", "Ocurrió un error al eliminar el registro", "error");
                    }
                });
            }
        });
    });

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

    $("#editarModal").on("hidden.bs.modal", function(event) {
        event.preventDefault();
        $("#editId").val("");
        $("#editCodSigma").val("");
        $("#editCodItem").val("");
        $("#editMarca").val("");
        $("#editDepartamento").val("");
        $("#editDescripcion").val("");
    });

    $("#guardarEdicion").click(function(event) {
        event.preventDefault();
        var id = $("#editId").val();
        var codSigma = $("#editCodSigma").val();
        var codItem = $("#editCodItem").val();
        var marca = $("#editMarca").val();
        var departamento = $("#editDepartamento").val();
        var descripcion = $("#editDescripcion").val();

        if (!codSigma || !codItem || !descripcion) {
            Swal.fire("Error", "Por favor, completa todos los campos", "error");
            return;
        }

        if (id) {
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

