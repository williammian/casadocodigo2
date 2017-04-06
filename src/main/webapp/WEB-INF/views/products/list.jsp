<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Lista</title>
</head>
<body>

${sucesso}

	<table>
		<tr>
			<td>Titulo</td>
			<td>Valores</td>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.title}</td>
				<td>
					<c:forEach items="${product.prices}" var="price"> 
						[${price.value} - ${price.bookType}]
					</c:forEach>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>