<%--
  Created by IntelliJ IDEA.
  User: saif23
  Date: 11/21/2016
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%--
<html>
<head>
    <title>Blog</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<br> <br>
--%>
<%--

<div class="container">
    <div class="row">

        <div class="col-md-3"></div>
--%>

        <div class=" well sidebar-nav col-md-9">

            <c:forEach items="${blogList}" var="userblog">

                <div class="row">
                    <div class="row">
                        <div class="pull-left media ">
                            <img src="<c:url value='../contents/image/my_pic.jpg'/>" class="img-circle" alt="Cinque Terre"
                                 width="50"
                                 height="50"/>
                        </div>
                       <%-- <div class="pull-right">
                            <b><a href="#">${registrationObj.firstname}</a></b> <br/>
                            <span class="glyphicon glyphicon-calendar"></span>
                            <fmt:formatDate pattern="dd/MM/yyyy" value="${userblog.postDate}"/>
                        </div>--%>
                        <div><h3>${userblog.subjectOfComment}</h3></div>
                    </div>
                    <br><br>
                    <p style="padding-left: 30px;"> ${userblog.descriptionOfComment}</p>
                    <hr size="30">
                    <div class="pull-left">
                        <p>
                            <span class="glyphicon glyphicon-calendar"></span>
                            <fmt:formatDate pattern="dd/MM/yyyy" value="${userblog.postDate}"/>
                            |<fmt:formatDate pattern="hh:mm a" value="${userblog.postDate}"/>
                            | <a href="#" data-toggle="collapse" data-target="#demo"><span
                                class="glyphicon glyphicon-comment"></span> Comments</a>
                            | <span class="glyphicon glyphicon-share"></span> Share

                        </p>
                    </div>
                </div>

                <div id="demo" class="collapse row ">
                    <div class="col-md-1"></div>
                    <div class="col-md-6">
                        <form:form>
                            <table>
                                <tr>
                                    <td>
                                        <div class="pull-left media">
                                            <img src="<c:url value='../contents/image/my_pic.jpg'/>" class="img-circle"
                                                 alt="Cinque Terre" width="30"
                                                 height="30"/>
                                        </div>
                                    </td>
                                    <td><input type="text" placeholder="Your Comment"></td>
                                    <td><input type="submit" value="Submit"></td>
                                </tr>
                            </table>
                        </form:form>
                    </div>
                </div>

                <br>
                <hr size="30">
                <br>

            </c:forEach>

            <div class="row">
                <a class="btn btn-primary" href="/user/postyourblog">Post Your Blog</a>
                <div class="pull-right">
                    <a class="btn btn-warning" href="/j_spring_security_logout">LogOut>></a>

                </div>

            </div>
            <br>
            <br>

        </div>
<%--

        <div class="col-md-3"></div>
    </div>
</div>

</body>
</html>
--%>
