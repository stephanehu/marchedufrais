<%-- 
    Document   : checkout
    Created on : Feb 23, 2015, 7:56:48 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<section class="header_text sub">
    <img class="pageBanner" src="themes/images/Payment Security Header.jpg" alt="New products" >
    <h4><span>CONFIRM ORDER</span></h4>

</section>	
<section class="main-content">
    <div class="row">
        <div class="span12">
            <div class="accordion" id="accordion2">
                <div class="accordion-group">
                    <!--                    <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Checkout Options</a>
                                        </div>-->
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Confirm Order</a>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="row-fluid">
                                    <div class="span6">
                                        <h4>Order Confirmation </h4>
                                        <div class="control-group">
                                            <label class="control-label">Confirmation N:</label>
                                            <div class="controls">
                                                <strong>${orderRecord.confirmationNumber}</strong>
                                                <br/><span>Please keep a note of your confirmation number!</span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Request</label>
                                            <div class="controls">
                                                <h4>If you have a query concerning your order, feel free to <a href="contact">contact us</a></h4>
                                            </div>
                                        </div>					                                             
                                    </div>

                                    <div class="span6">
                                        <h4></h4>
                                        <table >
                                            <tr class="">
                                                <th colspan="3">order summary</th>
                                            </tr>

                                            <tr class="">
                                                <td>product</td>
                                                <td>quantity</td>
                                                <td>price</td>
                                            </tr>

                                            <c:forEach var="orderedProduct" items="${orderedProducts}" varStatus="iter">

                                                <tr class="${((iter.index % 2) != 0) ? 'lightBlue' : 'white'}">
                                                    <td>
                                                        ${products[iter.index].name}
                                                    </td>
                                                    <td class="quantityColumn">
                                                        ${orderedProduct.quantity}
                                                    </td>
                                                    <td class=" ">
                                                        ${products[iter.index].price * orderedProduct.quantity}
                                                    </td>
                                                </tr>

                                            </c:forEach>

                                            <tr class="lightBlue"><td colspan="3" style="padding: 0 20px"><hr></td></tr>

                                            <tr class="lightBlue">
                                                <td colspan="2" ><strong>surcharge:</strong></td>
                                                <td >
                                                    ${initParam.deliverySurcharge}</td>
                                            </tr>

                                            <tr class="">
                                                <td colspan="2" ><strong>total</strong></td>
                                                <td id="totalCellRight">
                                                    ${orderRecord.amount}</td>
                                            </tr>

                                            <tr class=""><td colspan="3" style="padding: 0 20px"><hr></td></tr>

                                            <tr class="">
                                                <td colspan="3" ><strong>date Processed:</strong>
                                                    ${orderRecord.dateCreated}
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="span6">                  
                                        <h4>Your Address</h4>				  
                                        <table >
                                            <tr class="header">
                                                <th colspan="3">delivery Address</th>
                                            </tr>

                                            <tr>
                                                <td colspan="3" class="lightBlue">
                                                    ${customer.name}
                                                    <br>
                                                    ${customer.address}
                                                    <br>
                                                    ${customer.cityRegion}
                                                    <br>
                                                    <hr>
                                                    <strong>email:</strong> ${customer.email}
                                                    <br>
                                                    <strong>phone:</strong> ${customer.phone}
                                                </td>
                                            </tr>
                                        </table>                                 

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>




            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Navigation</h4>
                        <ul class="nav">
                            <li><a href="./index.jsp">Home</a></li>  
                            <li><a href="./aboutus.jsp">About Us</a></li>
                            <li><a href="./contact.jsp">Contac Us</a></li>                
                            						
                        </ul>					
                    </div>
            <div class="span4">
            <h4>My Cart</h4>
            <c:if test="${cart ne null}">
                <ul class="nav">
                    <li><a href="cart">contains  &nbsp; ${cart.numberOfItems}</a></li>                   
                    <li><a href="cart">Wish List</a></li>
                    <li><a href="checkout">Checkout</a></li>
                </ul>
            </c:if>
        </div>
                    <div class="span5">
                        <p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
                        <p>M@rcheDuFr@is is a project inspired by Java Developer Stephane Ehu. It has been created in the Java Enterprise Edition Platform with passion and professionalism.  By the Grace of Jesus Christ I will do exploits.</p>
                        <br/>
                        <span class="social_icons">
                            <a class="facebook" href="#">Facebook</a>
                            <a class="twitter" href="#">Twitter</a>
                            <a class="skype" href="#">Skype</a>
                            <a class="vimeo" href="#">Vimeo</a>
                        </span>
                    </div>					
                </div>	
            </section>
            <section id="copyright">
                <span>Copyright 2015 Stephane Ehu  All right reserved. https://github.com/stephanehu/marchedufrais.git</span>
            </section>
        </div>



        <script src="themes/js/common.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#checkoutForm").validate({
                    rules: {
                        name: "required",
                        email: {
                            required: true,
                            email: true
                        },
                        phone: {
                            required: true,
                            number: true,
                            minlength: 9
                        },
                        address: {
                            required: true
                        },
                        creditcard: {
                            required: true,
                            creditcard: true
                        }
                    }
                });
            });
        </script>

        </body>
        </html>     