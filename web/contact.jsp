<%-- 
    Document   : contact
    Created on : Feb 23, 2015, 7:12:49 PM
    Author     : Stephane Ehu Alias RighteousByGod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>M@rcheDuFr@is.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
        <!-- bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
        <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

        <!-- global styles -->
        <link href="themes/css/flexslider.css" rel="stylesheet"/>
        <link href="themes/css/main.css" rel="stylesheet"/>

        <!-- scripts -->
        <script src="themes/js/jquery-1.7.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>				
        <script src="themes/js/superfish.js"></script>	
        <script src="themes/js/jquery.scrolltotop.js"></script>
        <!--[if lt IE 9]>			
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>		
        <div id="top-bar" class="container">
            <div class="row">
                <div class="span4">
                    <form method="POST" class="search_form">
                        <input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
                    </form>
                </div>
                <div class="span8">
                    <div class="account pull-right">
                        <ul class="user-menu">				
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="aboutus.jsp">About Us</a></li>
                            <li><a href="contact.jsp">Contact</a></li>					
                           		
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">				
                    <a href="index" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>

                </div>
            </section>

            <section class="google_map">
                <iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15549.570931613096!2d77.60591199482262!3d13.010644101377123!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae172777a77d29%3A0x11104f368ff598b5!2sMariyappa+Rd%2C+Inasappa+Layout%2C+Kalyan+Nagar%2C+Bengaluru%2C+Karnataka+560043%2C+India!5e0!3m2!1sen!2s!4v1424928677841&amp;iwloc=A&amp;output=embed"></iframe>
            </section>
            <section class="header_text sub">
                <!--<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >-->
                <h4><span>Contact Us</span></h4>
            </section>
            <section class="main-content">				
                <div class="row">				
                    <div class="span5">
                        <div>
                            <h5>ADDITIONAL INFORMATION</h5>
                            <p><strong>Phone:</strong>&nbsp;(091) 9066-233865<br>
                                <strong>Fax:</strong>&nbsp;+04 (091) 456-7890<br>
                                <strong>Email:</strong>&nbsp;<a href="#">enlight365@gmail.com</a>								
                            </p>
                            <br/>
                            <h5>SECONDARY OFFICE IN BANGALORE</h5>
                            <p><strong>Phone:</strong>&nbsp;(113) 023-1125<br>
                                <strong>Fax:</strong>&nbsp;+04 (113) 023-1145<br>
                                <strong>Email:</strong>&nbsp;<a href="#">niamianstephane@gmail.com</a>					
                            </p>
                        </div>
                    </div>
                    <div class="span7">
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                        <form method="post" action="#">
                            <fieldset>
                                <div class="clearfix">
                                    <label for="name"><span>Name:</span></label>
                                    <div class="input">
                                        <input tabindex="1" size="18" id="name" name="name" type="text" value="" class="input-xlarge" placeholder="Name">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="email"><span>Email:</span></label>
                                    <div class="input">
                                        <input tabindex="2" size="25" id="email" name="email" type="text" value="" class="input-xlarge" placeholder="Email Address">
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <label for="message"><span>Message:</span></label>
                                    <div class="input">
                                        <textarea tabindex="3" class="input-xlarge" id="message" name="body" rows="7" placeholder="Message"></textarea>
                                    </div>
                                </div>

                                <div class="actions">
                                    <button tabindex="3" type="submit" class="btn btn-inverse">Send message</button>
                                </div>
                            </fieldset>
                        </form>
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
    </body>
</html>