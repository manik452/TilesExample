<%--
  Created by IntelliJ IDEA.
  User: saif23
  Date: 11/21/2016
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
--%>

        <div class="well sidebar-nav col-md-9">

            <form:form  class="form-horizontal" method="post" commandName="registration">

                <div id="signupalert" style="display:none" class="alert alert-danger">
                    <p>Error:</p>
                    <span></span>
                </div>


                <div class="form-group">
                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                    <div class="col-md-9">
                        <form:input type="text" class="form-control"  path="firstname" placeholder="First Name"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                    <div class="col-md-9">
                        <form:input type="text" class="form-control" path="lastname" placeholder="Last Name"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                    <div class="col-md-9">
                        <form:input type="text" class="form-control" path="username" placeholder="Last Name"/>
                    </div>
                </div>

               <%-- <div class="form-group">
                    <label for="email" class="col-md-3 control-label">Email</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="email" placeholder="Email Address">
                    </div>
                </div>--%>



                <div class="form-group">
                    <label for="password" class="col-md-3 control-label">Password</label>
                    <div class="col-md-9">
                        <form:input type="password" class="form-control" path="userpassword" placeholder="Password"/>
                    </div>
                </div>



                <div class="form-group">
                    <!-- Button -->
                    <div class="col-md-offset-3 col-md-9">
                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                    </div>
                </div>


            </form:form>





            <%--<center>
                <form:form method="post" commandName="registration">
                    <table>
                        <tr>
                            <td><p>First Name</p></td>
                            <td><form:input path="firstname"/></td>
                        </tr>
                        <tr>
                            <td><p>lastname</p></td>
                            <td><form:input type="text" path="lastname"/></td>
                        </tr>


                        <tr>
                            <td><p>username</p></td>
                            <td>
                                <form:input type="text" path="username"/>
                            </td>
                        </tr>
                        <tr>
                            <td><p>Userpassword</p></td>
                            <td>
                                <form:input type="password" path="userpassword"/>
                            </td>
                        </tr>
                            &lt;%&ndash; <tr>
                                 <td>
                                     <p>Userpassword</p>
                                     <form:input type="file" path="imageFile" name="fileUpload" size="50"/>
                                 </td>
                             </tr>&ndash;%&gt;
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Registration"/>
                            </td>
                        </tr>

                    </table>
                </form:form>
            </center>--%>
        </div>

