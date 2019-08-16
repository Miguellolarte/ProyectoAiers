$(function (){
    
    //alert();
    $('#validamembresia').validate({
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
      
            Detalles:{
               required:'Este campo es obligatorio'
           }
           
       }
        
    });
});

function fechaPosterior(){
    //cambiarian lo que hay dentro del getElement... por los elementos que contienen las fechas a validar
    // la fecha debe tener el formato siguiente dd/mm/yyyy
    var fechaInicio = document.getElementById("FechaInicio");
    var fechaFin = document.getElementById("FEchaFin");
    var anio = parseInt(fechaInicio.value.substring(6,10));
    var mes = fechaInicio.value.substring(3,5);
    var dia = fechaInicio.value.substring(0,2);
    var canio = parseInt(fechaFin.value.substring(6,10));
    var cmes = fechaFin.value.substring(3,5);
    var cdia = fechaFin.value.substring(0,2);
    if(canio > anio)
        return(true);
    else{
        if (canio === anio){
            if(cmes > mes)
                return(true);
            if(cmes === mes)
                if(cdia >= dia)
                    return(true);
                else
                    return(false);
            else
                return(false);
        }else
            return(false);
    }
}



jQuery.validator.addMethod("accept", function(value, element, param) {
  return value.match(new RegExp("." + param + "$"));
});



