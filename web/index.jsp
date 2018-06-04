<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
    Document   : index
    Created on : Feb 23, 2015, 5:44:26 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>

<%--<sql:query var="bakerys" dataSource="jdbc/M@rcheDuFr@is">
    SELECT *  FROM product where category_id=3
</sql:query>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>





<section  class="Home-slider" id="home-slider">
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="themes/images/carousel/veimg.jpg" alt=""/>
            </li>
            <li>
                <img src="themes/images/carousel/friut.jpg" alt=""/>
                <div class="intro">
                    <h1>Mid season sale</h1>
                    <p><span>Up to 50% Off</span></p>
                    <p><span>On selected items online and in stores</span></p>
                </div>
            </li>
        </ul>
    </div>			
</section>

<section class="header_text">
    We stand for top quality e-commerce developer. Our genuine developers always optimized Java EE commercial application. 
    <br/>Don't miss to use our cheap project helper and our coming book: The art of Building an E-Commerce.
</section>

<section class="main-content">
    <div class="row">
        <div class="span12">		 											
            <div class="row">
                <div class="span12">
                    <h4 class="title">
                        <span class="pull-left"><span class="text"><span class="line"><img class="img-circle" src="${initParam.categoryImagePath}dairylg.jpg" alt="" width="80" height="80" /> <strong> Dairy</strong></span></span></span>
                        <span class="pull-right">
                            <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                        </span>
                    </h4>
                    <div id="myCarousel" class="myCarousel carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <ul class="thumbnails">												


                                    <c:forEach var="dairy" items="${dairies}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${dairy.id}'/>"><img src="${initParam.productImagePath}${dairy.name}.png" alt="${dairy.name}" /></a></p>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="title">${dairy.name}</a><br/>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="products">${dairy.description}</a>
                                                <p class="price">  &#8377 ${dairy.price}</p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>

                            </div>
                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="dairy" items="${dairies}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${dairy.id}'/>"><img src="${initParam.productImagePath}${dairy.name}.png" alt="${dairy.name}" /></a></p>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="title">${dairy.name}</a><br/>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="products">${dairy.description}</a>
                                                <p class="price"> &#8377 ${dairy.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>
                                usefor for each to display product meat
                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="dairy" items="${dairies}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${dairy.id}'/>"><img src="${initParam.productImagePath}${dairy.name}.png" alt="${dairy.name}" /></a></p>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="title">${dairy.name}</a><br/>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="products">${dairy.description}</a>
                                                <p class="price">&#8377 ${dairy.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="dairy" items="${dairies}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${dairy.id}'/>"><img src="${initParam.productImagePath}${dairy.name}.png" alt="${dairy.name}" /></a></p>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="title">${dairy.name}</a><br/>
                                                <a href="<c:url value='product_detail?${dairy.id}'/>" class="products">${dairy.description}</a>
                                                <p class="price">&#8377 ${dairy.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>
                                
                            </div>


                        </div>							
                    </div>
                </div>						
            </div>
            <br/>
            <div class="row">
                <div class="span12">
                    <h4 class="title">
                        <span class="pull-left"><span class="text"><span class="line"><img class="img-circle" src="${initParam.categoryImagePath}meatlg.jpg" alt="" width="80" height="80" /> <strong>Meats</strong></span></span></span>
                        <span class="pull-right">
                            <a class="left button" href="#myCarousel3" data-slide="prev"></a><a class="right button" href="#myCarousel3" data-slide="next"></a>
                        </span>
                    </h4>
                    <div id="myCarousel3" class="myCarousel3 carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <ul class="thumbnails">												


                                    <c:forEach var="meat" items="${meats}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${meat.id}'/>"><img src="${initParam.productImagePath}${meat.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="title">${meat.name}</a><br/>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="products">${meat.description}</a>
                                                <p class="price">&#8377 ${meat.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>

                            </div>
                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="meat" items="${meats}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${meat.id}'/>"><img src="${initParam.productImagePath}${meat.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="title">${meat.name}</a><br/>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="products">${meat.description}</a>
                                                <p class="price">&#8377 ${meat.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="meat" items="${meats}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${meat.id}'/>"><img src="${initParam.productImagePath}${meat.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="title">${meat.name}</a><br/>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="products">${meat.description}</a>
                                                <p class="price">&#8377 ${meat.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="meat" items="${meats}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${meat.id}'/>"><img src="${initParam.productImagePath}${product.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="title">${meat.name}</a><br/>
                                                <a href="<c:url value='product_detail?${meat.id}'/>" class="products">${meat.description}</a>
                                                <p class="price">&#8377 ${meat.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>


                        </div>							
                    </div>
                </div>						
            </div>
            <br/>
            <div class="row">
                <div class="span12">
                    <h4 class="title">
                        <span class="pull-left"><span class="text"><span class="line"><img class="img-circle" src="${initParam.categoryImagePath}bakerylg.jpg" alt="" width="80" height="80" />  <strong>Bakeries</strong></span></span></span>
                        <span class="pull-right">
                            <a class="left button" href="#myCarousel1" data-slide="prev"></a><a class="right button" href="#myCarousel1" data-slide="next"></a>
                        </span>
                    </h4>
                    <div id="myCarousel1" class="myCarousel1 carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <ul class="thumbnails">												


                                    <c:forEach var="bakery" items="${bakeries}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${bakery.id}'/>"><img src="${initParam.productImagePath}${bakery.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="title">${bakery.name}</a><br/>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="products">${bakery.description}</a>
                                                <p class="price">&#8377 ${bakery.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>

                            </div>
                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="bakery" items="${bakeries}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${bakery.id}'/>"><img src="${initParam.productImagePath}${bakery.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="title">${bakery.name}</a><br/>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="products">${bakery.description}</a>
                                                <p class="price">&#8377 ${bakery.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="bakery" items="${bakeries}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${bakery.id}'/>"><img src="${initParam.productImagePath}${bakery.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="title">${bakery.name}</a><br/>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="products">${bakery.description}</a>
                                                <p class="price">&#8377 ${bakery.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="bakery" items="${bakeries}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${bakery.id}'/>"><img src="${initParam.productImagePath}${bakery.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="title">${bakery.name}</a><br/>
                                                <a href="<c:url value='product_detail?${bakery.id}'/>" class="products">${bakery.description}</a>
                                                <p class="price">&#8377 ${bakery.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>


                        </div>							
                    </div>
                </div>						
            </div>
            <br/>
            <div class="row">
                <div class="span12">
                    <h4 class="title">

                        <span class="pull-left"><span class="text"><span class="line"><img class="img-circle" src="${initParam.categoryImagePath}fruitlg.png" alt="" width="80" height="80" /> <strong>Fruits & Vegs</strong></span></span></span>
                        <span class="pull-right">
                            <a class="left button" href="#myCarousel2" data-slide="prev"></a><a class="right button" href="#myCarousel2" data-slide="next"></a>
                        </span>
                    </h4>
                    <div id="myCarousel2" class="myCarousel2 carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <ul class="thumbnails">												


                                    <c:forEach var="fruitveg" items="${fruitvegs}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${fruitveg.id}'/>"><img src="${initParam.productImagePath}${fruitveg.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="title">${fruitveg.name}</a><br/>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="products">${fruitveg.description}</a>
                                                <p class="price">&#8377 ${fruitveg.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 

                                </ul>

                            </div>
                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="fruitveg" items="${fruitvegs}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${fruitveg.id}'/>"><img src="${initParam.productImagePath}${fruitveg.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="title">${fruitveg.name}</a><br/>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="products">${fruitveg.description}</a>
                                                <p class="price">&#8377 ${fruitveg.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach>  

                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="fruitveg" items="${fruitvegs}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${fruitveg.id}'/>"><img src="${initParam.productImagePath}${fruitveg.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="title">${fruitveg.name}</a><br/>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="products">${fruitveg.description}</a>
                                                <p class="price">&#8377 ${fruitveg.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>

                            <div class="item">
                                <ul class="thumbnails">
                                    <c:forEach var="fruitveg" items="${fruitvegs}">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <p><a href="<c:url value='product_detail?${fruitveg.id}'/>"><img src="${initParam.productImagePath}${fruitveg.name}.png" alt="" /></a></p>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="title">${fruitveg.name}</a><br/>
                                                <a href="<c:url value='product_detail?${fruitveg.id}'/>" class="products">${fruitveg.description}</a>
                                                <p class="price">&#8377 ${fruitveg.price} </p>
                                            </div>
                                        </li> 
                                    </c:forEach> 
                                </ul>

                            </div>


                        </div>							
                    </div>
                </div>						
            </div>

            <div class="row feature_box">						
                <div class="span4">
                    <div class="service">
                        <div class="responsive">	
                            <img src="themes/images/feature_img_2.png" alt="" />
                            <h4>ECO && NATURAL <strong>PRODUCT</strong></h4>
                            <p>Your health is the think we care about, have and enjoy all our ecologic product.</p>									
                        </div>
                    </div>
                </div>
                <div class="span4">	
                    <div class="service">
                        <div class="customize">			
                            <img src="themes/images/feature_img_1.png" alt="" />
                            <h4>FREE <strong>SHIPPING</strong></h4>
                            <p>Our customer joy is our priority, more than a business goal we want you to stay happy.</p>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <div class="service">
                        <div class="support">	
                            <img src="themes/images/feature_img_3.png" alt="" />
                            <h4>24/7 LIVE <strong>SUPPORT</strong></h4>
                            <p>Call us and interact with our team, listening means properly growing for us.</p>
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
    <span>&emsp14; Copyright 2015 Stephane Ehu  All right reserved. https://github.com/stephanehu/marchedufrais.git</span>
</section>
</div>



<script src="themes/js/common.js"></script>
<script src="themes/js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
    $(function () {
        $(document).ready(function () {
            $('.flexslider').flexslider({
                animation: "fade",
                slideshowSpeed: 4000,
                animationSpeed: 600,
                controlNav: false,
                directionNav: true,
                controlsContainer: ".flex-container" // the container that holds the flexslider
            });
        });
    });
</script>

</body>
</html>