/**
 * 
 */

$("#Register").on("click", function(){
    $("#myModal").modal("hide");
    $("#myModal").on("hidden.bs.modal",function(){
    $("#mylogin").modal("show");
    });
});

$("#mylogin").on("click", function(){
    $("#mylogin").modal("hide");
    $("#mylogin").on("hidden.bs.modal",function(){
    $("#myModal").modal("show");
    });
});