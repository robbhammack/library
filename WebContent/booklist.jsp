<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.log4j.Logger" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>book list</title>

<%

String requestUri = request.getRequestURI();
String jspName = requestUri.substring(requestUri.lastIndexOf('/'));
Logger  log = Logger.getLogger(jspName);
log.info("booklist logger instanciated");
%>
</head>
<body>
<h2>Book List</h2>

<sql:setDataSource dataSource="jdbc/libraryDatasource" />
<sql:query var="books" >
select title, isbn from books_view
</sql:query>
<select style="DISPLAY: block" size="1" id="dLbox"
name="book">

<c:forEach var="row" items="${books.rows}">
<option value="${row.isbn}">${row.title}</option>

</c:forEach>
</select>
</body>
</html>