package controller;

import cart.ElectronicCart;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import session.CategorySessionBean;
import session.CustomerSessionBean;
import session.OrderManagerSessionBean;
import session.ProductSessionBean;
import validate.EntriesValidator;

/**
 *
 * @author Stephane Ehu Alias RigtheousByGod ane Ehu Alias RigtheousByGod
 */
@WebServlet(name = "Controller",
        loadOnStartup = 1,
        urlPatterns = {"/category",
            "/product_detail",
            "/addToCart",
            "/cart",
            "/login",
            "/register",
            "/contact",
            "/updateCart",
            "/checkout",
            "/purchase",
            "/chooseLanguage"})
public class ClientSessionController extends HttpServlet {

    @EJB
    private CustomerSessionBean customerFacade;

    @EJB
    private OrderManagerSessionBean orderManager;

    private String surcharge;

    @EJB
    private CategorySessionBean categoryFacade;
    @EJB
    private ProductSessionBean productFacade;

    private Product selectedProduct;

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

        super.init(servletConfig);

        // initialize servlet with configuration information
        surcharge = servletConfig.getServletContext().getInitParameter("deliverySurcharge");

        // store category list in servlet context
        //Category dairyCategory = categoryFacade.find(Short.parseShort("1"));
        getServletContext().setAttribute("dairies", categoryFacade.find(Short.parseShort("1")).getProductCollection());
        getServletContext().setAttribute("meats", categoryFacade.find(Short.parseShort("2")).getProductCollection());
        getServletContext().setAttribute("bakeries", categoryFacade.find(Short.parseShort("3")).getProductCollection());
        getServletContext().setAttribute("fruitvegs", categoryFacade.find(Short.parseShort("4")).getProductCollection());
        getServletContext().setAttribute("categories", categoryFacade.findAll());
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        Category selectedCategory;
        Collection<Product> categoryProducts;

        // if category page is requested
        if (userPath.equals("/category")) {

            // get categoryId from request
            String categoryId = request.getQueryString();

            if (categoryId != null) {

                // get selected category
                selectedCategory = categoryFacade.find(Short.parseShort(categoryId));

                // place selected category in session scope
                session.setAttribute("selectedCategory", selectedCategory);

                // get all products for selected category
                categoryProducts = selectedCategory.getProductCollection();

                // place category products in session scope
                session.setAttribute("categoryProducts", categoryProducts);
                userPath = "/products";
            }

            // ifproduct_detail page is requested
        } else if (userPath.equals("/product_detail")) {

            // get categoryId from request
            String productId = request.getQueryString();

            if (productId != null) {

                // get selected product
                selectedProduct = productFacade.find(Integer.parseInt(productId));

                //set selected category
                selectedCategory = categoryFacade.find(selectedProduct.getCategoryId().getId());

                // place selected category in session scope
                session.setAttribute("selectedCategory", selectedCategory);

                session.setAttribute("selectedProduct", selectedProduct);

                // get all products for selected category
                categoryProducts = selectedCategory.getProductCollection();

                // place category products in session scope
                session.setAttribute("categoryProducts", categoryProducts);
                // userPath="/products";
            }
            // if cart page is requested
        } else if (userPath.equals("/cart")) {

            String clear = request.getParameter("clear");

            if ((clear != null) && clear.equals("true")) {

                ElectronicCart cart = (ElectronicCart) session.getAttribute("cart");
                cart.clear();
            }
            // calculate total

            userPath = "/cart";

            // if checkout page is requested
        } else if (userPath.equals("/checkout")) {

            ElectronicCart cart = (ElectronicCart) session.getAttribute("cart");

            // calculate total
            cart.calculateTotal(surcharge);

            // forward to checkout page and switch to a secure channel
            // if user switches language
        } else if (userPath.equals("/chooseLanguage")) {

            // get language choice
            String language = request.getParameter("language");

            // place in request scope
            request.setAttribute("language", language);

            String userView = (String) session.getAttribute("view");

            if ((userView != null)
                    && (!userView.equals("/index"))) {     // index.jsp exists outside 'view' folder
                // so must be forwarded separately
                userPath = userView;
            } else {

                // if previous view is index or cannot be determined, send user to welcome page
                try {
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                return;
            }
        }

        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");  // ensures that user input is interpreted as
        // 8-bit Unicode (e.g., for Czech characters)

        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        ElectronicCart cart = (ElectronicCart) session.getAttribute("cart");
        EntriesValidator validator = new EntriesValidator();

        // if addToCart action is called
        if (userPath.equals("/addToCart")) {

            String quantity = request.getParameter("quantity");
            int qtt = Integer.parseInt(quantity);

            // if user is adding item to cart for first time
            // create cart object and attach it to user session
            if (cart == null) {

                cart = new ElectronicCart();
                session.setAttribute("cart", cart);
            }

            // get user input from request
            String productId = request.getParameter("productId");

            if (!productId.isEmpty()) {

                Product product = productFacade.find(Integer.parseInt(productId));
                cart.addItem(product);
            }

            quantity = String.valueOf(qtt);

            boolean invalidEntry = validator.validateQuantity(productId, quantity);

            if (!invalidEntry) {

                Product product = productFacade.find(Integer.parseInt(productId));
                cart.update(product, quantity);
            }
            userPath = "/product_detail";

            // if updateCart action is called
        }  else if (userPath.equals("/updateCart")) {

            // get input from request
            String productId = request.getParameter("productId");
            String quantity = request.getParameter("quantity");

            boolean invalidEntry = validator.validateQuantity(productId, quantity);

            if (!invalidEntry) {

                Product product = productFacade.find(Integer.parseInt(productId));
                cart.update(product, quantity);
            }

            userPath = "/cart";

            // if purchase action is called
        } else if (userPath.equals("/purchase")) {

            if (cart != null) {

                // extract user data from request
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String cityRegion = request.getParameter("cityRegion");
                String ccNumber = request.getParameter("creditcard");

                // validate user data
                boolean validationErrorFlag = false;
                validationErrorFlag = validator.validateForm(name, email, phone, address, cityRegion, ccNumber, request);

                // if validation error found, return user to checkout
                if (validationErrorFlag == true) {
                    request.setAttribute("validationErrorFlag", validationErrorFlag);
                    userPath = "/checkout";

                    // otherwise, save order to database
                } else {

                    int orderId = orderManager.placeOrder(name, email, phone, address, cityRegion, ccNumber, cart);

                    // if order processed successfully send user to confirmation page
                    if (orderId != 0) {

                        // dissociate shopping cart from session
                        cart = null;

                        // end session
                        session.invalidate();

                        // get order details
                        Map orderMap = orderManager.getOrderDetails(orderId);

                        // place order details in request scope
                        request.setAttribute("customer", orderMap.get("customer"));
                        request.setAttribute("products", orderMap.get("products"));
                        request.setAttribute("orderRecord", orderMap.get("orderRecord"));
                        request.setAttribute("orderedProducts", orderMap.get("orderedProducts"));

                        userPath = "/confirmation";

                        // otherwise, send back to checkout page and display error
                    } else {
                        userPath = "/checkout";
                        request.setAttribute("orderFailureFlag", true);
                    }
                }
            }
        } else if (userPath.equals("/login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

        } else if (userPath.equals("/register")) {
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

        }

        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
