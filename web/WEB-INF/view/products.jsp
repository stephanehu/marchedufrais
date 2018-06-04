<%-- 
    Document   : products
    Created on : Feb 23, 2015, 7:08:53 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<section class="header_text sub">
    <c:choose>
        <c:when test="${selectedCategory.id eq 1}">
            <img class="pageBanner" src="${initParam.bannerImagePath}bann2.jpg" alt="New products" >
        </c:when>
        <c:when test="${selectedCategory.id eq 2}">
            <img class="pageBanner" src="${initParam.bannerImagePath}bann3.jpg" alt="New products" >
        </c:when>
        <c:when test="${selectedCategory.id eq 3}">
            <img class="pageBanner" src="${initParam.bannerImagePath}bann6.jpg" alt="New products" >
        </c:when>
        <c:otherwise>
            <img class="pageBanner" src="${initParam.bannerImagePath}bann8.jpg" alt="New products" >
        </c:otherwise>
    </c:choose>

    <h4><span>New products</span></h4>
</section>
<section class="main-content">

    <div class="row">						
        <div class="span9">								
            <ul class="thumbnails listing-products">
                <c:forEach var="product" items="${categoryProducts}" varStatus="iter">
                    <li class="span3">
                        <div class="product-box">
                            <span class="sale_tag"></span>												
                            <a href="product_detail?${product.id}"><img src="${initParam.productImagePath}${product.name}.png"
                                                                        alt="${product.name}"></a><br/>
                            <a href="product_detail?${product.id}" class="title">${product.name}</a><br/>
                            <a href="product_detail?${product.id}" class="category">Phasellus consequat</a>
                            <p class="price">${product.price} &#8377</p>
                        </div>
                    </li>

                </c:forEach>
            </ul>								
            <hr>
            <div class="pagination pagination-small pagination-centered">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
        </div>
        <div class="span3 col">
            <div class="block">	
                <ul class="nav nav-list">
                    <li class="nav-header">SUB CATEGORIES</li>
                    <li><a href="products?4">Dry Fruit</a></li>
                    <li class="active"><a href="products?4">Vegetable</a></li>
                    <li><a href="products?4">Fresh Fruit</a></li>
                    <li><a href="products?4">Spicy Vegetable </a></li>
                    <li><a href="products?2">Chicken Meat</a></li>
                    <li><a href="products?2">Donec laoreet dui</a></li>
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
                                <c:choose>
                                    <c:when test="${selectedCategory.id eq 1}">
                                        <c:forEach var="product" items="${bakeries}" begin="0" end="1">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:when>
                                    <c:when test="${selectedCategory.id eq 2}">
                                        <c:forEach var="product" items="${fruitvegs}" begin="2" end="3">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:when>
                                    <c:when test="${selectedCategory.id eq 3}">
                                        <c:forEach var="product" items="${dairies}" begin="0" end="1">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="product" items="${meats}" begin="0" end="1">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:otherwise>

                                </c:choose>   

                            </ul>
                        </div>
                        <div class="item">
                            <ul class="thumbnails listing-products">
                                <c:choose>
                                    <c:when test="${selectedCategory.id eq 1}">
                                        <c:forEach var="product" items="${meats}" begin="1" end="2">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:when>
                                    <c:when test="${selectedCategory.id eq 2}">
                                        <c:forEach var="product" items="${dairies}" begin="1" end="2">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:when>
                                    <c:when test="${selectedCategory.id eq 3}">
                                        <c:forEach var="product" items="${fruitvegs}" begin="0" end="1">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="product" items="${bakeries}" begin="2" end="3">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="<c:url value='product_detail?${product.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}" /></a></p>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="title">${product.name}</a><br/>
                                                    <a href="<c:url value='product_detail?${product.id}'/>" class="products">${product.description}</a>
                                                    <p class="price"> &#8377 ${product.price} </p>
                                                </div>
                                            </li> 
                                        </c:forEach>
                                    </c:otherwise>

                                </c:choose>  
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block">								
                <h4 class="title"><strong>Best</strong> Seller</h4>								
                <ul class="small-product">
                    <li>
                        <a href="#" title="Cheese">                            
                            <img src="${initParam.productImagePath}cheese.png" alt="cheese"/>
                        </a>
                        <a href="#">cheese</a>
                    </li>
                    <li>
                        <a href="#" title="corn on the cob">
                            <img src="${initParam.productImagePath}corn on the cob.png" alt="corn on the cob"/>
                        </a>
                        <a href="#">corn on the cob</a>
                    </li>
                    <li>
                        <a href="#" title="organic meat patties">
                            <img src="${initParam.productImagePath}organic meat patties.png" alt="organic meat patties"/>
                        </a>
                        <a href="#">organic meat patties</a>
                    </li>   
                </ul>
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
                <li><a href="./contact.jsp">Contact Us</a></li>                
               							
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
</body>
</html>