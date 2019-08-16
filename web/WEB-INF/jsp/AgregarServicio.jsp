<%-- 
    Document   : AgregarServicio
    Created on : 15/08/2019, 10:26:41 PM
    Author     : Familia Olarte
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    
    <link href="bootstrap/css/open-iconic-bootstrap.min.css" rel="stylesheet" type="text/css"/>
    
    <link href="bootstrap/css/animate.css" rel="stylesheet" type="text/css"/>
    
    <link href="bootstrap/css/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/owl.theme.default.min.css" rel="stylesheet" type="text/css"/>
    
    
    <link href="bootstrap/css/magnific-popup.css" rel="stylesheet" type="text/css"/>

    
    <link href="bootstrap/css/aos.css" rel="stylesheet" type="text/css"/>

    
    
    
    
    <link href="bootstrap/css/flaticon.css" rel="stylesheet" type="text/css"/>

    <link href="bootstrap/css/style.css" rel="stylesheet" type="text/css"/>
  
    
    <link href="bootstrap/css/form.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
       <div class="car-body">
            <form method="POST" id="validaservicio">
                <h4>Agregar nuevo Servicio</h4>
                <label>Fecha Inicio</label>
                <input type="date" id="FechaInicio" name="FechaInicio" class="form-control">
                <label>Fecha Fin</label>
                <input type="date" id="FechaFin" name="FechaFin" class="form-control">
                <label>Valor</label>
                <input type="text" id="Valor" name="Valor" class="form-control">
                <label>Telefono</label>
                <input type="text" id="Telefono" name="Telefono" class="form-control">
                <label>Correo</label>
                <input type="text" id="Correo" name="Correo" class="form-control">
                <label>Direccion</label>
                <input type="text" id="Direccion" name="Direccion" class="form-control">
                <label>Detalles</label>
                <input type="text" id="Detalles" name="Detalles" class="form-control">   
                
                
                <select name="idtiposervicio" id="idtiposervicio">
                    <c:forEach var="dato" items="${listaT}">
                        <option value="${dato.idtiposervicio}">${dato.nombre}</option>
                    </c:forEach>
                </select>
                
                <select name="idusuario" id="idusuario">
                    <c:forEach var="dato" items="${listaU}">
                        <option value="${dato.idusuario}">${dato.nombre}</option>
                    </c:forEach>
                </select>
                    
                
                
              
             
            </div>
                <input type="submit" value="Agregar" class="btn btn-succes">
                <a href="indexTipoServicio.htm">Regresar</a>
            </form>
        </div>
        
        
        
        
   <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery-migrate-3.0.1.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/popper.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.easing.1.3.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.waypoints.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.stellar.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/owl.carousel.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/aos.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.animateNumber.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/scrollax.min.js" type="text/javascript"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="bootstrap/js/google-map.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/validarservicio.js" type="text/javascript"></script>

    </body>
</html>
