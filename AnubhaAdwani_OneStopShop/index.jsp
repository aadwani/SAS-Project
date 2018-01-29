<%-- 
    Document   : main
    Created on : April 22, 2017, 9:22:00 PM
     Author     : Anubha
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/header.jsp"/>
</section>
<center><p><i><b><c:out value="${message}"> </c:out></b></i></p></center>
    <a href="usercontroller?action=logout"><span style="float:right;">Logout</span></a>
    <div  id="common">
        <div class="container text-center">
            <h3>There is no love sincere than the love of food</h3>
            <p><em>Your Favorite Food Is Just A Click Away!</em></p>
            <p>Serving the best dishes in North Carolina since 2017, All our ingredients are organic and fresh</p>
            <br>
            <div class="row">
                <div class="col-sm-4">
                    <p><strong>Snacks</strong></p><br>
                    <img src="images/FrenchFries.jpg" alt="Coffe">
                </div>
                <div class="col-sm-4">
                    <p><strong>Pizza and More</strong></p><br>
                    <img src="images/VegPizza.jpg" alt="Frappe">
                </div>
                <div class="col-sm-4">
                    <p><strong>Desserts and Drinks</strong></p><br>
                    <img src="images/desserts.jpg" alt="Desserts">
                </div>
            </div>
        </div>
        <br><br><br>
        <center><a href="ordercontroller?action=order">Order</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="contact.jsp">Contact Us</a></center>
    </div>
<c:import url="/footer.jsp"/> 