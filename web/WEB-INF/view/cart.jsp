<%-- 
    Document   : cart
    Created on : Feb 23, 2015, 7:05:09 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<section class="header_text sub">
    <img class="pageBanner" src="${initParam.bannerImagePath}ban5.jpg" alt="New products" >
    <h4><span>Shopping Cart</span></h4>
</section>

<section class="main-content">				
    <div class="row">
        <div class="span9">					
            <h4 class="title"><span class="text"><strong>Your</strong> Cart</span></h4>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Remove</th>
                        <th>Image</th>
                        <th>Product Name</th>
                        <th>Unit Price</th>
                        <th>Total</th>
                        <th>Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">

                        <c:set var="product" value="${cartItem.product}"/>
                        <tr>
                            <td><input type="checkbox" value="option1"></td>
                            <td><a href="product_detail"><img src="${initParam.productImagePath}${product.name}.png"
                                                              alt="${product.name}"></a></td>
                            <td>${product.name}</td>
                            <!--<td><input type="text" placeholder="${cartItem.quantity}"  class="input-mini"></td>-->
                            <td><fmt:formatNumber type="currency" currencySymbol="&#8377; " value="${product.price}"/> </td>
                            <td><fmt:formatNumber type="currency" currencySymbol="&#8377; " value="${cartItem.total}"/></td>
                            <td>
                                <form action="<c:url value='updateCart'/>" method="post">
                                    <input type="hidden"
                                           name="productId"
                                           value="${product.id}"/>
                                    <input type="text"
                                           name="quantity"
                                           placeholder="${cartItem.quantity}" 
                                           class="input-mini"
                                           value="${cartItem.quantity}"/>
                                    <input type="submit"
                                           name="submit"
                                           value="update"/>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>

                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><strong><fmt:formatNumber type="currency" currencySymbol="&#8377; " value="${cart.subtotal}"/></strong></td>
                    </tr>		  
                </tbody>
            </table>
            <h4>What would you like to do next?</h4>
            <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>

            <label class="radio">
                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" checked="true"/>
                Estimate Shipping &amp; Taxes
            </label>
            <hr>
            <p class="cart-total right">
                <strong>Sub-Total</strong>: <fmt:formatNumber type="currency" currencySymbol="&#8377; " value="${cart.subtotal}"/><br>
                <strong>Eco Tax (-2.00)</strong>: $2.00<br>
                <strong>VAT (17.5%)</strong>: <fmt:formatNumber type="currency" currencySymbol="&#8377; " value="${initParam.deliverySurcharge}"/><br>
                <strong>Total Brut</strong>: <fmt:formatNumber type="currency" currencySymbol="&#8377; " value="${cart.subtotal + initParam.deliverySurcharge}"/><br>
            </p>
            <hr/>
            <p class="buttons center">				

                <button class="btn" type="button" id="products">Continue Shopping</button>
                <c:if test="${cart.items ne null && cart.numberOfItems ne 0}">
                    <button class="btn btn-inverse" type="submit" id="checkout">Checkout</button>
                </c:if>
            </p>					
        </div>
        <div class="span3 col">
            <div class="block">	
                <ul class="nav nav-list">
                    <li class="nav-header">SUB CATEGORIES</li>
                    <li><a href="products">Fresh Milk</a></li>
                    <li class="active"><a href="products">Sweet vegetable</a></li>
                    <li><a href="products">Fresh Meat</a></li>
                    <li><a href="products">Frsh Fruit</a></li>
                    <li><a href="products">Dry Fruit</a></li>
                    <li><a href="products">Vegetable</a></li>
                </ul>
                <br/>

            </div>
            <div class="block">
                <h4 class="title">
                    <span class="pull-left"><span class="text">Randomize</span></span>
                    <span class="pull-right">
                        <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                    </span>
                </h4>
                <div id="myCarousel" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="active item">
                            <ul class="thumbnails listing-products">
                                <c:forEach var="product" items="${bakeries}" begin="0" end="1">
                                    <li class="span3">
                                        <div class="product-box">
                                            <span class="sale_tag"></span>
                                            <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                            <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                            <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                            <p class="price">${product.price} &#8377</p>
                                        </div>
                                    </li> 
                                </c:forEach>
                            </ul>
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
                    <li><a href="cart">N° of Items &nbsp; ${cart.numberOfItems}</a></li>                   
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
<script>
    $(document).ready(function () {
        $('#checkout').click(function (e) {
            document.location.href = "checkout";
        })
    });
</script>		
</body>
</html>