$(function (){
    
    //alert();
    $('#validartipo').validate({
       rules:{
           Nombre:{
               required:true,
               accept: "[a-zA-Z]+"
           }
         
       },   
       messages:{
           Nombre:{
               required:'Este campo es obligatorio',
                accept:'No se aceptan numeros'
           }
       
       }
        
    });
});




jQuery.validator.addMethod("accept", function(value, element, param) {
  return value.match(new RegExp("." + param + "$"));
});



