<%-- 
    Document   : login
    Created on : April 20, 2017, 8:45:11 PM
     Author     : Anubha
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/header.jsp"/>
<a href="main.jsp"><span style="float:right;">&nbsp;&nbsp; Home</span></a>
</section>
<center>
    <div  id="common">
        <form name="login" action="usercontroller" method="post" class="form-inline">
            <input type="hidden" value="login" name="action" />    
            <h1>User Login Form </h1> 
            <p><i><c:out value="${message}"></c:out></i></p>
                <h6>Please enter your Username and Password to continue</h6>
                <div class="form-group">
                    <label for="exampleInputName2">Username:</label>
                    <input type="text" placeholder="Username" name="username" id="username" class="form-control" required>
                </div>
                <br><br>
                <div class="form-group">
                    <label for="exampleInputName2">Password:</label>
                    <input type="password" placeholder="Password" name="password" id="password" class="form-control" required>
                </div>
                <br>
                <br>
                <button type="submit" value="Login" onclick="login()" class="btn btn-default">Login</button>
                New to OneStopShop, Please <br>
                <a href="signup.jsp">Sign Up Here</a>
                <br><br>
            </form>
        </div>
    </center>     
<c:import url="/footer.jsp"/>             
