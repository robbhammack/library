<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="org.apache.log4j.Logger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>maintain books</title>
<link type='text/css' rel='stylesheet' href='http://localhost:8080/library/include/form.css' />
<sql:setDataSource dataSource="jdbc/libraryDatasource" />
<%

String requestUri = request.getRequestURI();
String jspName = requestUri.substring(requestUri.lastIndexOf('/'));
Logger  log = Logger.getLogger(jspName);
log.info("booklist logger instanciated");

%>
</head>
<body>
<h2>maintain books</h2>

    <div id="bookform" class="form">
        <form id='frmBookMaintenance' name='frmBookMaintenance' method='POST' action='frmBookMaintenance.jsp'>
            <h1>book maintenance form</h1>
            <p>add, edit and delete books</p>
            
            <label>ISBN<span class="small">the book's ISBN</span></label>
            <input type="text" name="isbn" id="isbn" />
            
            <label>Title<span class="small">title of the book</span></label>
            <input type="text" name="title" id="title" />
            
            <label>author<span class="small">author(s) of the book</span></label>
            <sql:query var="authors" >select AUTHOR_ID, first_name,last_name from authors</sql:query>
            <select style="DISPLAY: block" size="1" id="authorList" name="authorList">
                <c:forEach var="row" items="${authors.rows}">
                    <option value="${row.author_id}">${row.last_name}, ${row.first_name}</option>
                </c:forEach>
            </select>
            
            <label>series<span class="small">series</span></label>
            <sql:query var="series" >select series_ID, title from series</sql:query>
            <select style="DISPLAY: block" size="1" id="seriesList" name="seriesList">
                <c:forEach var="row" items="${series.rows}">
                    <option value="${row.series_id}">${row.title}</option>
                </c:forEach>
            </select>
            
            <button type="submit">add book</button>
            <div class="spacer"></div>
        
        </form>
    </div>
</body>
</html>