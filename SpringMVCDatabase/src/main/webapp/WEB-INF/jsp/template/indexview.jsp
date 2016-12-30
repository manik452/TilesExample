<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="title" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="well sidebar-nav col-md-9">
    <h1 class="logo"><a href="#"></a></h1>
    <div id="home-title">
        <h3>This is bishal Index Page</h3>
    </div>


    <c:if test="${not empty error}">
        <div class="errorblock">
            Your Login was Unsuccessfull. <br/>
            Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
        </div>
    </c:if>
    <p>${logoutsuccessfull}</p>


    <form class="form-horizontal" action="/j_spring_security_check" name="f" method="POST">

        <div style="margin-bottom: 25px" class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="login-username" type="text" class="form-control" name="j_username" value=""
                   placeholder="username or email">
        </div>

        <div style="margin-bottom: 25px" class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input id="login-password" type="password" class="form-control" name="j_password" placeholder="password">
        </div>


        <div class="input-group">
            <div class="checkbox">
                <label>
                    <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                </label>
            </div>
        </div>


        <div style="margin-top:10px" class="form-group">
            <!-- Button -->

            <div class="col-sm-12 controls">

                <input type="submit" name="Submit" class="btn btn-success" value="Login"/>
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-12 control">
                <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%">
                    Don't have an account!
                    <a href="/registration" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                        Sign Up Here
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
</div>
