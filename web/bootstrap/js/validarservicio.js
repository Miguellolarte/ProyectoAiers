$(function (){
    
    //alert();
    $('#validaservicio').validate({
       rules:{
           FechaInicio:{
               required:true
            
           },
           
           
           FechaFin:{
               required:true
              
           },
           
           Valor:{
               required:true,
               accept: "[0-9]+"
               
           },
           
        
           Telefono:{
               required:true,
               number:true,
               minlength:10,
               maxlength:10,
               digits:true
           },
           
   
          
           Correo:{
               required:true,
               email:true
           },
           
            
           Direccion:{
               required:true
           },
           
       
           Detalles:{
               required:true
           }
        
       },   
       messages:{
           FechaInicio:{
               required:'Este campo es obligatorio'
                
           },
           FechaFin:{
               required:'Este campo es obligatorio'
          
           },
           
           Valor:{
               required:'Este campo es obligatorio',
               accept:'No se aceptan letras'
               
           },
           
           Telefono:{
               required:'Este campo es obligatorio',
               number:'Digite un numero',
               minlength:'El telefono debe tener minimo 10 numeros',
               maxlength:'El telefono debe tener maximo 10 numeros'
           },
           
            Correo:{
               required:'Este campo es obligatorio',
               email:'El correo es invalido'
           },
           
           Direccion:{
               required:'Este campo es obligatorio'
           },
          
         
            Detalles:{
               required:'Este campo es obligatorio'
           }
           
       }
        
    });
});


$('#validate').click(function() {

    var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;

    if (regex.test($('#Correo').val().trim())) {
       

    } else {
        alert('La direccón de correo no es válida');
    }
});

jQuery.validator.addMethod("accept", function(value, element, param) {
  return value.match(new RegExp("." + param + "$"));
});


/**function ValidarFechas()
{
   var fechainicial = document.getElementById("FechaInicio").value;
   var fechafinal = document.getElementById("FechaFin").value;

   if(Date.parse(fechafinal) < Date.parse(fechainicial)) {

   alert("La fecha final debe ser mayor a la fecha inicial");
   }
}
*/


window.onload = function(){
  var fecha = new Date(); //Fecha actual
  var mes = fecha.getMonth()+1; //obteniendo mes
  var dia = fecha.getDate(); //obteniendo dia
  var ano = fecha.getFullYear(); //obteniendo año
  if(dia<10)
    dia='0'+dia; //agrega cero si el menor de 10
  if(mes<10)
    mes='0'+mes //agrega cero si el menor de 10
  document.getElementById('FechaInicio').value=ano+"-"+mes+"-"+dia;
}