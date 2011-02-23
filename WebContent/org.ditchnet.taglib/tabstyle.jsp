<%@ page contentType="text/css" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userAgent" value="${fn:toLowerCase(header['user-agent'])}"/>
<c:set var="isMac" value="false"/>
<c:set var="isMacIE" value="false"/>

<c:if test="${fn:indexOf(userAgent,'mac') > -1}">
	<c:set var="isMac" value="true"/>
	<c:if test="${fn:indexOf(userAgent,'msie') > -1 && fn:indexOf(userAgent,'opera') == -1}">
		<c:set var="isMacIE" value="true"/>
	</c:if>
</c:if>

/******************************************************************************
********************************   wireframe   ********************************
******************************************************************************/

.ditch-tab-skin-wireframe .ditchnet-tab-container {
			margin:10px;
			border-bottom: 1px solid gray;
			border-left:   1px solid gray;
			}
	
.ditch-tab-skin-wireframe .ditch-tab-wrap {
			
			}
	
.ditch-tab-skin-wireframe .ditch-tab {
			float:left;
			padding:2px 10px 2px;
			border-top:  1px solid gray;
			border-right:1px solid gray;
			cursor:pointer;
			}
	
.ditch-tab-skin-wireframe .ditch-tab-wrap .ditch-unfocused {
			color:gray;
			background-color:white;
			}
	
.ditch-tab-skin-wireframe .ditch-tab-wrap .ditch-focused {
			color:black;
			background-color:silver;
			}

.ditch-tab-skin-wireframe .ditch-tab-pane-wrap {
			padding:8px;
			border-top:    1px solid gray;
			border-right:  1px solid gray;
			}

.ditch-tab-skin-wireframe .ditch-tab-pane {
			
			}
	
.ditch-tab-skin-wireframe br.ditch-clear {
			clear:both;
			}
			
			
/******************************************************************************
******************************   INVISIBLE   **********************************
******************************************************************************/

.ditch-tab-skin-invisible .ditchnet-tab-container {
			margin:10px;
			border:0;
			}
	
.ditch-tab-skin-invisible .ditch-tab-wrap {
			display:none;
			border:0;
			}
	
.ditch-tab-skin-invisible .ditch-tab {
			display:none;
			border:0;
			}
	
.ditch-tab-skin-invisible .ditch-tab-wrap .ditch-unfocused {
			border:0;
			}
	
.ditch-tab-skin-invisible .ditch-tab-wrap .ditch-focused {
			border:0;
			}

.ditch-tab-skin-invisible .ditch-tab-pane-wrap {
			border:0;
			padding:8px;
			}

.ditch-tab-skin-invisible .ditch-tab-pane {
			border:0;
			}
	
.ditch-tab-skin-invisible br.ditch-clear {
			clear:both;
			}
			
			
/******************************************************************************
********************************   default   **********************************
******************************************************************************/

.ditch-tab-skin-default .ditchnet-tab-container {
			margin:10px;
			}
	
.ditch-tab-skin-default .ditch-tab-wrap {
			position:relative;
			z-index:10;
			font:12px "Lucida Grande",LucidaGrande,Verdana,sans-serif;
			}
	
.ditch-tab-skin-default .ditch-tab {
			position:relative;
			float:left;
			padding:2px 20px;
			margin:0 1px -1px 0;
			text-align:center;
			cursor:pointer;
			font:12px "Lucida Grande",LucidaGrande,Verdana,sans-serif;
			}

.ditch-tab-skin-default .ditch-tab-bg-left {
			position:absolute;
			left:0; top:0;
			width:10px; height:18px;
			}
html>body .ditch-tab-skin-default .ditch-tab-bg-left {
<c:choose>
	<c:when test="${isMac}">
			height:19px;
	</c:when>
	<c:otherwise>
			height:18px;
	</c:otherwise>
</c:choose>
			}

.ditch-tab-skin-default .ditch-unfocused {
			color:#999;
			border-bottom:1px solid silver;
	<c:choose>
		<c:when test="${isMacIE}">
			background-color:#eee;
		</c:when>
		<c:otherwise>
			background:transparent url(<c:out value="${pageContext.request.contextPath}" />/org.ditchnet.taglib/default_tab_bg_right.gif) 100% 0 no-repeat;
		</c:otherwise>
	</c:choose>
			}
	
.ditch-tab-skin-default .ditch-focused {
			border-bottom:1px solid white;
	<c:choose>
		<c:when test="${isMacIE}">
			background-color:white;
		</c:when>
		<c:otherwise>
			background:transparent url(<c:out value="${pageContext.request.contextPath}" />/org.ditchnet.taglib/default_tab_bg_white_right.gif) 100% 0 no-repeat;
		</c:otherwise>
	</c:choose>
			}

<c:if test="${not isMacIE}">
.ditch-tab-skin-default .ditch-unfocused .ditch-tab-bg-left {
			background:transparent url(<c:out value="${pageContext.request.contextPath}" />/org.ditchnet.taglib/default_tab_bg_left.gif) 0 0 no-repeat;
			}
.ditch-tab-skin-default .ditch-focused .ditch-tab-bg-left {
			background:transparent url(<c:out value="${pageContext.request.contextPath}" />/org.ditchnet.taglib/default_tab_bg_white_left.gif) 0 0 no-repeat;
			}
</c:if>


.ditch-tab-skin-default .ditch-tab a:link,
.ditch-tab-skin-default .ditch-tab a:visited {
			color:black;
			text-decoration:none;
			}
.ditch-tab-skin-default .ditch-tab-wrap .ditch-unfocused a:link,
.ditch-tab-skin-default .ditch-tab-wrap .ditch-unfocused a:visited {
			color:silver;
			}



.ditch-tab-skin-default .ditch-tab-pane-wrap {
			position:relative;
			z-index:9;
			border:1px solid silver;
			padding:8px;
			}

.ditch-tab-skin-default .ditch-tab-pane {
			
			}
	
.ditch-tab-skin-default br.ditch-clear {
			clear:both;
			}
