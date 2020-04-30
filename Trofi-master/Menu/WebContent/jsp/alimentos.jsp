<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
</head>
<body>
	<h1>Alimentos</h1>
	<table>
		<tr>
			<td><a href="menu?action=mostrarCategoria" >Volver a Categorias</a> </td>
			<td><a href="menu?action=agregarAlimento&id=<c:out value="${alimento.id}" />&id_cat=<c:out value="${id_cat}" />">Agregar</a></td>
		</tr>
	</table>
	
	<table border="1" width="100%">
		<tr>
		 <td> ID</td>
		 <td> NOMBRE</td>
		 <td>DESCRPICION</td>
		 <td>COSTO</td>
		 <td>EDITAR</td>
		 <td>ELIMINAR</td>
		</tr>
		<c:forEach var="alimento" items="${lista}">
			<tr>	
				<td><c:out value="${alimento.id}"/></td>
				<td><c:out value="${alimento.nombre}"/></td>
				<td><c:out value="${alimento.descripcion}"/></td>
				<td><c:out value="${alimento.costo}"/></td>
				<td><a href="menu?action=editarAlimento&id=<c:out value="${alimento.id}" />&id_cat=<c:out value="${id_cat}" />">Editar</a></td>
				<td><a href="menu?action=eliminarAlimento&id=<c:out value="${alimento.id}" />&id_cat=<c:out value="${id_cat}" />">Eliminar</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>