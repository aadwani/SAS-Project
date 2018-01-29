<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/header.jsp"/>
<a href="contact.jsp"><span style="float:right;">&nbsp; &nbsp; Contact Us</span></a>
<a href="usercontroller?action=logout"><span style="float:right;"> &nbsp; &nbsp; Logout</span></a>
<a href="index.jsp"><span style="float:right;">&nbsp; &nbsp; Home</span></a>
</section>
<div id="block">
    <div style="padding-left: 0px;">
        <nav id="menu">

            <ul class="parent-menu">
                <table border="1">
                    <tr>    
                    <td><li><img src="images/Sandwich1.jpg"><a href="ordercontroller?param1=1&action=additem">Famous Sandwich</a></li></td>
                    <td><li><img src="images/GrilledSandwich.jpg"><a href="ordercontroller?param1=2&action=additem">Grilled Sandwich</a></li></td>
                    <td><li><img src="images/FrenchFries.jpg"><a href="ordercontroller?param1=3&action=additem">French Fries</a></li></td>
                    <td><li><img src="images/BeansTaco.jpg"><a href="ordercontroller?param1=4&action=additem">Beans Taco</a></li></td>
                    <td><li><img src="images/BurritoBowl.jpg"><a href="ordercontroller?param1=5&action=additem">Burrito Bowl</a></li></td>
                    <td><li><img src="images/BurritoWrap.jpg"><a href="ordercontroller?param1=6&action=additem">Burrito Wrap</a></li></td>
                    </tr> 
                    <tr>
                    <td><li><img src="images/CheeseRavioli.jpg"><a href="ordercontroller?param1=7&action=additem">Cheese Ravioli</a></li></td>
                    <td><li><img src="images/SpinachRavioli.jpg"><a href="ordercontroller?param1=8&action=additem">Spinach Ravioli</a></li></td>
                    <td><li><img src="images/VegSub.jpg"><a href="ordercontroller?param1=9&action=additem">Veg Sub</a></li></td>
                    <td><li><img src="images/NonVegSub.jpg"><a href="ordercontroller?param1=10&action=additem">Non Veg Sub</a></li></td>
                    <td><li><img src="images/VegPizza.jpg"><a href="ordercontroller?param1=11&action=additem">Veg Pizza</a></li></td>
                    <td><li><img src="images/NonVegPizza.jpg"><a href="ordercontroller?param1=12&action=additem">Non Veg Pizza</a></li></td>   
                    </tr>
                    <tr>
                    <td><li><img src="images/Latte.PNG"><a href="ordercontroller?param1=13&action=additem">Latte Macchiato</a></li></td>
                    <td><li><img src="images/Coconutmilk.PNG"><a href="ordercontroller?param1=14&action=additem">Coconut Milk Mocha</a></li></td>
                    <td><li><img src="images/CaramelizedHoney.PNG"><a href="ordercontroller?param1=15&action=additem">Caramelized Honey Latte</a></li></td>
                    <td><li><img src="images/Frappe.jpg"><a href="ordercontroller?param1=16&action=additem">Frappe</a></li></td>
                    <td><li><img src="images/Expresso.PNG"><a href="ordercontroller?param1=17&action=additem">Expresso</a></li></td>
                    <td><li><img src="images/ChocolateCake.PNG"><a href="ordercontroller?param1=18&action=additem">Chocolate Cake Pop</a></li></td>                   
                    </tr>
                </table>
            </ul>
        </nav>
    </div>
</div>    
<c:import url="/footer.jsp"/>  

