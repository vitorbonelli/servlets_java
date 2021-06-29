<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Gerenciador de Empresas</h1>
	<c:if test="${not empty empresa}">
		<h2>Cadastro realizado!</h2>
		<p>Empresa ${empresa} cadastrada com sucesso!</p>
	</c:if>
	
	<h2>Lista de Empresas:</h2>
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
				<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">editar</a>
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
			</li>
		</c:forEach>
	</ul>

</body>
</html>