<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Blog</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Account</a></li>
            <li><a href="#">About Us</a></li>
        </ul>


        <c:if test="${pageContext['request'].userPrincipal == null}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </c:if>


        <c:if test="${pageContext['request'].userPrincipal != null}">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span
                            class="glyphicon glyphicon-user"></span><sec:authentication property="name"/>!
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">My account</a></li>
                        <li><a href="/j_spring_security_logout">Sign out</a></li>
                    </ul>
                </li>
            </ul>
        </c:if>

    </div>
</nav>