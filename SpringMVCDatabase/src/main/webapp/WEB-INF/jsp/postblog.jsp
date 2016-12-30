<%--
  Created by IntelliJ IDEA.
  User: saif23
  Date: 11/21/2016
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<div class="col-md-2"></div>
        <div class="col-md-6">
           <%-- <center><h2>Welcome <sec:authentication property="name"/></h2></center>
            <center><h2>This is controller name test ${registrationObj.firstname}</h2></center>
--%>


            <form:form class="form-inline" action="/user/postyourblog" method="post" commandName="UserBlog">
                <table>

                    <tr>
                        <td>
                            <label>User Id:</label>
                        </td>
                        <td>
                            <form:input class="form-control" path="user_id" value="${registrationObj.ID}"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Blog Id:</label>
                        </td>
                        <td>
                            <form:input class="form-control" path="commentID" placeholder="Blog Id"/>
                        </td>
                    </tr>

                    <%--<tr>
                        <td>
                            <label>Date:</label>
                            <form:input class="form-control" path="postDate"/>
                        </td>
                    </tr>--%>

                    <tr>
                        <td>
                            <label>Heading:</label>
                        </td>
                        <td>
                            <form:input type="text" class="form-control" path="subjectOfComment" placeholder="Heading"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Description:</label>
                        </td>
                        <td>
                            <form:textarea type="text" class="form-control" path="DescriptionOfComment" placeholder="Description"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Commit"/>
                        </td>
                    </tr>
                </table>
            </form:form>
            <a class="btn btn-warning" href="/j_spring_security_logout">LogOut>></a>
        </div>