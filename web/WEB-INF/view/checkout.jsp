<%-- 
    Document   : checkout
    Created on : Feb 23, 2015, 7:06:48 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<section class="header_text sub">
    <img class="pageBanner" src="themes/images/checkoutBanner.jpg" alt="New products" >
    <h4><span>Check Out</span></h4>

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
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Account &amp; Billing Details</a>
                        </div>
                        <form  action="<c:url value='purchase'/>" method="post">

                            <c:if test="${!empty validationErrorFlag}">
                                <span class="error smallText"><fmt:message key="validationErrorMessage"/>

                                    <c:if test="${!empty nameError}">
                                        <br><span class="indent"><fmt:message key="nameError"/></span>
                                    </c:if>
                                    <c:if test="${!empty emailError}">
                                        <br><span class="indent"><fmt:message key="emailError"/></span>
                                    </c:if>
                                    <c:if test="${!empty phoneError}">
                                        <br><span class="indent"><fmt:message key="phoneError"/></span>
                                    </c:if>
                                    <c:if test="${!empty addressError}">
                                        <br><span class="indent"><fmt:message key="addressError"/></span>
                                    </c:if>
                                    <c:if test="${!empty cityRegionError}">
                                        <br><span class="indent"><fmt:message key="cityRegionError"/></span>
                                    </c:if>
                                    <c:if test="${!empty ccNumberError}">
                                        <br><span class="indent"><fmt:message key="ccNumberError"/></span>
                                    </c:if>

                                </span> 
                            </c:if>
                            <div id="collapseTwo" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <div class="row-fluid">
                                        <div class="span6">
                                            <h4>Your Personal Details</h4>
                                            <div class="control-group">
                                                <label class="control-label">First Name</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" id="name" name="name" value="${param.name}"/>

                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Last Name</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" id="name" name="lastname" value="${param.name}"/>
                                                </div>
                                            </div>					  
                                            <div class="control-group">
                                                <label class="control-label">Email Address</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" id="email" name="email" value="${param.email}"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Telephone</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" id="phone" name="phone" value="${param.phone}"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Credit Card</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" id="creditcard" name="creditcard"  value="${param.creditcard}" />
                                                </div>
                                            </div>

                                        </div>
                                        <div class="span6">
                                            <h4>Your Address</h4>				  
                                            <div class="control-group">
                                                <label class="control-label"><span class="required">*</span> Address :</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" id="address" name="address" value="${param.address}"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Address 2:</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge"/>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label"><span class="required">*</span> City:</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge"/>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label"><span class="required">*</span> Country:</label>
                                                <div class="controls">
                                                    <select name="cityRegion" class="input-xlarge">
                                                        <c:forEach begin="1" end="10" var="regionNumber">
                                                            <option value="${regionNumber}"
                                                                    <c:if test="${param.cityRegion eq regionNumber}">selected</c:if>>${regionNumber}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label"><span class="required">*</span> Region / State:</label>
                                                <div class="controls">
                                                    <select name="zone_id" class="input-xlarge">
                                                        <option value=""> --- Please Select --- </option>
                                                        <c:forEach begin="1" end="10" var="regionNumber">
                                                            <option value="${regionNumber}"
                                                                    <c:if test="${param.cityRegion eq regionNumber}">selected</c:if>>${regionNumber}
                                                                    </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="control-group">

                                                <div class="controls">
                                                    <input type="submit" value="Purchase" class="btn-inverse"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!--                    <div class="accordion-group">
                                            <div class="accordion-heading">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">Confirm Order</a>
                                            </div>
                                            <div id="collapseThree" class="accordion-body collapse">
                                                <div class="accordion-inner">
                                                    <div class="row-fluid">
                                                        <div class="control-group">
                                                            <label for="textarea" class="control-label">Comments</label>
                                                            <div class="controls">
                                                                <textarea rows="3" id="textarea" class="span12"></textarea>
                                                            </div>
                                                        </div>									
                                                        <button class="btn btn-inverse pull-right">Confirm order</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->
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