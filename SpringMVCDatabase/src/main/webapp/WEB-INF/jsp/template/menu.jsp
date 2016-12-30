<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="well sidebar-nav col-md-3">
    <ul class="nav nav-list">
        <c:if test="${pageContext['request'].userPrincipal == null}">
            <li class="nav-header"><center>Log In </center></li>
        </c:if>
        <c:if test="${pageContext['request'].userPrincipal != null}">
            <li class="nav-header"><center>Hi <sec:authentication property="name"/> !</center></li>
        </c:if>
        <li><a href="#"><i class="icon-home"></i> Home</a></li>
        <li><a href="/user/pblog"><i class="icon-user"></i> My account</a></li>
        <li><a href="/user/postyourblog"><i class="icon-file"></i> Post Blog</a></li>
    </ul>
</div>