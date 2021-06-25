<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>

	<c:if test="${not empty empresa}">
		<h1>Cadastro realizado!</h1>
		<p>Empresa ${empresa} cadastrada com sucesso!</p>
	</c:if>

	<c:if test="${empty empresa}">
		<h1>Cadastro vazio!</h1>
		<p>Nenhuma empresa foi cadastrada.</p>
	</c:if>
</body>
</html>
