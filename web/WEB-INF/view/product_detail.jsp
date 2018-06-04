<%-- 
    Document   : product_detail
    Created on : Feb 23, 2015, 7:11:43 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<section class="header_text sub">
    <img class="pageBanner" src="${initParam.bannerImagePath}banner5.jpg" alt="New products" >
    <h4><span>Product Detail</span></h4>
</section>
<section class="main-content">				
    <div class="row">						
        <div class="span9">
            <div class="row">
                <div class="span4">
                    <a href="themes/images/ladies/1.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img src="${initParam.productImagePath}${selectedProduct.name}.png"
                                                                                                                                   alt="${product.name}"></a>												
                    <ul class="thumbnails small">								
                        <li class="span1">
                            <a href="themes/images/ladies/2.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 2"><img src="${initParam.productImagePath}${selectedProduct.name}.png"
                                                                                                                                           alt="${product.name}"></a>
                        </li>								
                        <li class="span1">
                            <a href="themes/images/ladies/3.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 3"><img src="${initParam.productImagePath}${selectedProduct.name}.png"
                                                                                                                                           alt="${product.name}"></a>
                        </li>													
                        <li class="span1">
                            <a href="themes/images/ladies/4.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 4"><img src="${initParam.productImagePath}${selectedProduct.name}.png"
                                                                                                                                           alt="${product.name}"></a>
                        </li>
                        <li class="span1">
                            <a href="themes/images/ladies/5.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 5"><img src="${initParam.productImagePath}${selectedProduct.name}.png"
                                                                                                                                           alt="${product.name}"></a>
                        </li>
                    </ul>
                </div>
                <div class="span5">
                    <address>
                        <strong>Brand:</strong> <span>M@rcheDuFr@is ${selectedProduct.name}</span><br>
                        <strong>Product Code:</strong> <span>Product ${selectedProduct.id}</span><br>
                        <strong>Reward Points:</strong> <span>0</span><br>
                        <strong>Availability:</strong> <span>Available</span><br>								
                    </address>									
                    <h4><strong>Price: ${selectedProduct.price} &#8377</strong></h4>
                </div>
                <div class="span5">
                    <form class="form-inline" action="<c:url value='addToCart'/>" method="post">
                        <label class="checkbox">
                            <input type="checkbox" value=""> Option one is this and that
                        </label>
                        <br/>
                        <label class="checkbox">
                            <input type="checkbox" value=""> Be sure to include why it's great
                        </label>
                        <input type="hidden"
                               name="productId"
                               value="${selectedProduct.id}">
                        <p>&nbsp;</p>
                        <label>Qty:</label>
                        <input type="text" class="span1" placeholder="1" name="quantity">
                        <button class="btn btn-inverse" type="submit" value="<fmt:message key='addToCart'/>">Add to cart</button>
                    </form>
                </div>							
            </div>
            <div class="row">
                <div class="span9">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active"><a href="#home">Description</a></li>
                        <li class=""><a href="#profile">Additional Information</a></li>
                    </ul>							 
                    <div class="tab-content">
                        <div class="tab-pane active" id="home">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</div>
                        <div class="tab-pane" id="profile">
                            <table class="table table-striped shop_attributes">	
                                <tbody>
                                    <tr class="">
                                        <th>Size</th>
                                        <td>Large, Medium, Small, X-Large</td>
                                    </tr>		
                                    <tr class="alt">
                                        <th>Colour</th>
                                        <td>Orange, Yellow</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>							
                </div>						
                <div class="span9">	
                    <br>
                    <h4 class="title">
                        <span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
                        <span class="pull-right">
                            <a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
                        </span>
                    </h4>
                    <div id="myCarousel-1" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <ul class="thumbnails listing-products">
                                    <c:forEach var="product" items="${categoryProducts}" end="2">
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
                            <div class="item">
                                <ul class="thumbnails listing-products">
                                    <c:forEach var="product" items="${categoryProducts}" begin="3" end="9">
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
        <div class="span3 col">
            <div class="block">	
                <ul class="nav nav-list">
                    <li class="nav-header">SUB CATEGORIES</li>
                    <li><a href="products">Nullam semper elementum</a></li>
                    <li class="active"><a href="products">Phasellus ultricies</a></li>
                    <li><a href="products">Donec laoreet dui</a></li>
                    <li><a href="products">Nullam semper elementum</a></li>
                    <li><a href="products">Phasellus ultricies</a></li>
                    <li><a href="products">Donec laoreet dui</a></li>
                </ul>
                <br/>
                <!--                <ul class="nav nav-list below">
                                    <li class="nav-header">MANUFACTURES</li>
                                    <li><a href="products">Adidas</a></li>
                                    <li><a href="products">Nike</a></li>
                                    <li><a href="products">Dunlop</a></li>
                                    <li><a href="products">Yamaha</a></li>
                                </ul>-->
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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
                                                    <p class="price">${product.price} &#8377</p>
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



<script src="themes/js/jquery.fancybox.js"></script>
<script src="themes/js/common.js"></script>
<script>
    $(function () {
        $('#myTab a:first').tab('show');
        $('#myTab a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        })
    })
    $(document).ready(function () {
        $('.thumbnail').fancybox({
            openEffect: 'none',
            closeEffect: 'none'
        });

        $('#myCarousel-2').carousel({
            interval: 2500
        });
    });
</script>
</body>
</html>