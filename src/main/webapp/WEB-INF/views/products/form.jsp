<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Cadastro de Produtos</title>
</head>
<body>

<form:form method="post" action="${spring:mvcUrl('saveProduct').build()}" commandName="product">
	<div>
		<label for="title">Titulo</label>
		<form:input path="title"/>
		<form:errors path="title"/>
	</div>
	<div>
		<label for="description">Descri��o</label>
		<form:textarea path="description" rows="10" cols="20"/>
		<form:errors path="description"/>
	</div>
	<div>
		<label for="pages">N�mero de paginas</label>
		<form:input path="pages"/>
		<form:errors path="pages"/>
	</div>
	<div>
		<label for="releaseDate">Data de lan�amento</label>
		<form:input path="releaseDate" type="date"/>
		<form:errors path="releaseDate"/>
	</div>
	
	<c:forEach items="${types}" var="bookType" varStatus="status">
		<div>
			<label for="price_${bookType}">${bookType}</label>
			<input type="text" name="prices[${status.index}].value" id="price_${bookType}"/>
			<input type="hidden" name="prices[${status.index}].bookType" value="${bookType}"/>
		</div>
	</c:forEach>
	
	<div>
		<input type="submit" value="Enviar">
	</div>
</form:form>
	


</body>
</html>