<%-- 
    Document   : signup
    Created on : April 20, 2017, 7:54:14 PM
    Author     : Anubha
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/header.jsp"/>

</section>

<div id="common">
    <div>
    

    <center>
        <h3><font color="green">Sign Up</font></h3>
    <form action="usercontroller?action=signup" method="post" class="form-inline">
        
       <input type="hidden" value="signup" name="action"> 
       <c:if test="${msg3 != null}">
           <h3><p><c:out value="${msg3}"></c:out></p></h3>
    </c:if>
   <div class="form-group">
    <label for="exampleInputEmail1">Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="username" name="username" id="username" class="form-control" required>
   </div>
    <br>
    <div class="form-group">
    <label for="exampleInputPassword1">Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="password" placeholder="password" name="password" class="form-control" id="password" required>
    </div>
    <br>
    <div class="form-group">
    <label for="exampleInputEmail1">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="email" name="email" id="email" class="form-control" required>
    </div>
    <br>
    <div class="form-group">
    <label for="exampleInputEmail1">FirstName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="FirstName" name="fname" id="fname" class="form-control" required>
    </div>
    <br>
    <div class="form-group">
    <label for="exampleInputEmail1">LastName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="LastName" name="lname" id="lname" class="form-control" required>
    </div><br>
    <!-- <div class="form-group">
    <label for="exampleInputEmail1">Phone Number:   </label>
    <input type="number" placeholder="Phone Number" name="number" id="number" class="form-control" required>
    </div> <br>
    <div class="form-group">
    <label for="exampleInput">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="Address" name="address" id="address" class="form-control" required>
    </div> <br>
    <div class="form-group">
    <label for="exampleInputEmail1">City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="City" name="city" id="city" class="form-control" required>
    </div> <br>
     <div class="form-group">
    <label for="exampleInputEmail1">State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" placeholder="State" name="state" id="state" class="form-control" required>
    </div> <br>
     <div class="form-group">
    <label for="exampleInputEmail1">Zipcode:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
    <input type="number" placeholder="Zipcode" name="zipcode" id="zipcode" class="form-control" required>-->
    <div class="form-group">
    <label for="exampleInputEmail1">Role:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
    <select name='role'>
    <option value="Customer">Customer</option>
    <option value="Manager">Manager</option>
    <option value="Waiter">Waiter</option>
    </select> 
    </div> 

 
    <br><br>
    <button type="submit" class="btn btn-default" value="Sign Up">Sign Up</button><br><br>
    </form>
    </div>
    </div>
    
</div>    
<c:import url="/footer.jsp"/>  


