<%--
  Created by IntelliJ IDEA.
  User: saif23
  Date: 11/24/2016
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Image Upload</title>
</head>
<body>
<form action="/imageup.do" method="post" enctype="multipart/form-data">
    <input type="file" name="image"/>
    <input type="submit" value="submit"/>
</form>

<img src="<c:url value='../image/X07zg.jpg'/>" class="img-circle" alt="Cinque Terre"
     width="50"
     height="50"/>

</body>
</html>
