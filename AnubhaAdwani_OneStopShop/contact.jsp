<%-- 
    Document   : manager
    Created on : April 15, 2017, 11:14:39 PM
     Author     : Anubha
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/header.jsp"/>

<a href="contact.jsp"><span style="float:right;">&nbsp; &nbsp; Contact Us</span></a>
<a href="usercontroller?action=logout"><span style="float:right;"> &nbsp; &nbsp; Logout</span></a>
<a href="index.jsp"><span style="float:right;">&nbsp; &nbsp; Home</span></a>
</section>

<div id="common">
    <div>
        
        <center><div style="width:500px; border: 4px solid;">
                <form action="emaillistservlet" method="post" class="form-inline">
                    <input type="hidden" value="addcontact" name="action"> 
                    <br>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Username:</label>
                        <input type="text" placeholder="Username" name="nameuser"  id="nameuser" class="form-control" required></div>
                    <br><br>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="text" placeholder="Email" name="email"  id="email" class="form-control" required></div>
                    <br><br>
                    <div class="form-group">
                        <label for="comment">Message:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <textarea class="form-control" rows="5" cols="25" id="message" name="message"></textarea>
                    </div><br><br>
                    <button type="submit" class="btn btn-default">Submit</button><br><br></form>
                </form>
            </div>
        </center>
    </div>
</div>    
<c:import url="/footer.jsp"/>  

