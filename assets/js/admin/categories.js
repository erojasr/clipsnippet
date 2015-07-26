$(document).ready(function(){
    //tabledit();
    loadCategories();

    addCategory();
});

function tabledit(){
    $('#example1').Tabledit({
        url: 'categorias/load',
        hideIdentifier: true,
        columns: {
            identifier: [0, 'id'],
            editable: [[1, 'categorys'], [2, 'status']]
        },
        buttons:{
            restore: {
                class: 'btn btn-sm btn-info',
                html: '<span class="glyphicon glyphicon-pencil"></span> &nbsp View',
                action: 'view'
            }
        },
        onDraw: function() {
            console.log('onDraw()');
        },
        onSuccess: function(data, textStatus, jqXHR) {
            console.log('onSuccess(data, textStatus, jqXHR)');
            console.log(data);
            console.log(textStatus);
            console.log(jqXHR);
        },
        onFail: function(jqXHR, textStatus, errorThrown) {
            console.log('onFail(jqXHR, textStatus, errorThrown)');
            console.log(jqXHR);
            console.log(textStatus);
            console.log(errorThrown);
        },
        onAlways: function() {
            console.log('onAlways()');
        },
        onAjax: function(action, serialize) {
            console.log('onAjax(action, serialize)');
            console.log(action);
            console.log(serialize);
        }

    });
}

function addCategory(){

    $('form#new-cat').on('submit', function(e) {
        e.preventDefault(); // prevent native submit
        $(this).ajaxSubmit({
            // dataType identifies the expected content type of the server response
            dataType:  'json', // pre-submit callback
            success: function(data){
                console.log(data);
                $('#modal-categories').modal('hide');
                loadCategories();
            }
        });
    });

}

function loadCategories(){

    $("#example1 tbody tr").remove();


    $.ajax({
        type: 'GET',
        url: 'categories/load',
        dataType: 'json',
        success: function(data){
            var prepare = "";
            $.each(data, function(i, item){
                prepare += '<tr><td scope="row">'+item.id+'</td><td>'+item.name+'</td><td>'+item.status+'</td></tr>';
            });

            $("#example1 tbody").append(prepare);
            tabledit();

        }
    });




}
