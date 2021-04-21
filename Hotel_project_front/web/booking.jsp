<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {
        String cust_name = request.getParameter("cust_name");
        String cust_email = request.getParameter("cust_email");
        String cust_phone = request.getParameter("cust_phone");
        String checkin_date = request.getParameter("checkin_date");
        String checkout_date = request.getParameter("checkout_date");
        String room_preference = request.getParameter("room_preference");
        String adult = request.getParameter("adult");

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");
        pst = conn.prepareStatement("insert into cust_new_book (cust_name,cust_email,cust_phone,checkin_date,checkout_date,room_preference,adult) values (?,?,?,?,?,?,?)");

        pst.setString(1, cust_name);
        pst.setString(2, cust_email);
        pst.setString(3, cust_phone);
        pst.setString(4, checkin_date);
        pst.setString(5, checkout_date);
        pst.setString(6, room_preference);
        pst.setString(7, adult);
        pst.executeUpdate();
%>
<script>
    alert("Record Added");
</script>

<%
    }
%>

<!DOCTYPE html>

<html>
    <head>
        <title>Hotel Richmond</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>

        <!-- header start -->
        <header class="header">
            <div class="container1">
                <div class="row v-center">
                    <div class="header-item item-left">
                        <div class="logo">
                            <a href="#">Hotel*Richmond</a>
                        </div>
                    </div>
                    <!-- menu start here -->
                    <div class="header-item item-center">
                        <div class="menu-overlay">
                        </div>
                        <nav class="menu">
                            <div class="mobile-menu-head">
                                <div class="go-back"><i class="fa fa-angle-left"></i></div>
                                <div class="current-menu-title"></div>
                                <div class="mobile-menu-close">&times;</div>
                            </div>
                            <ul class="menu-main">
                                <li>
                                    <a href="index.jsp"> Home</a>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#"> Accommodation<i class="fa fa-angle-down"></i></a>
                                    <div class="sub-menu mega-menu mega-menu-column-4">
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image1.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image2.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image3.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image4.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Foof Menu <i class="fa fa-angle-down"></i></a>
                                    <div class="sub-menu mega-menu mega-menu-column-4">
                                        <div class="list-item">
                                            <h4 class="title">Add Details</h4>
                                            <ul>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                            </ul>
                                            <h4 class="title">Add Details</h4>
                                            <ul>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                            </ul>
                                        </div>
                                        <div class="list-item">
                                            <h4 class="title">Add Details's Fashion</h4>
                                            <ul>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details</a></li>
                                            </ul>
                                            <h4 class="title">Furniture</h4>
                                            <ul>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details</a></li>
                                            </ul>
                                        </div>
                                        <div class="list-item">
                                            <h4 class="title">Add Details</h4>
                                            <ul>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                            </ul>
                                        </div>
                                        <div class="list-item">
                                            <img src="img/menu_food1.png" alt="shop">
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Events <i class="fas fa-angle-down"></i></a>
                                    <div class="sub-menu single-column-menu">
                                        <ul>
                                            <li><a href="#">Add Details </a></li>
                                            <li><a href="#">Add Details </a></li>
                                            <li><a href="#">Add Details  </a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">About US<i class="fas fa-angle-down"></i></a>
                                    <div class="sub-menu single-column-menu">
                                        <ul>
                                            <li><a href="#">Add Details</a></li>
                                            <li><a href="#">Add Details</a></li>
                                            <li><a href="#">Add Details</a></li>
                                            <li><a href="#">Add Details Page</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">Contact Us</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- menu end here -->
                    <div class="header-item item-right">

                        <!-- mobile menu trigger -->
                        <div class="mobile-menu-trigger">
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </header>


        <form  method="POST" action="#">
            <div class="elem-group">
                <h1>Rooms booking Form</h1>
                <label for="cust_name">Your Name</label>
                <input type="text" id="cust_name" name="cust_name" placeholder="John Doe" pattern=[A-Z\sa-z]{3,20} required>
            </div>
            <div class="elem-group">
                <label for="cust_email">Your E-mail</label>
                <input type="email" id="cust_email" name="cust_email" placeholder="john.doe@email.com" required>
            </div>
            <div class="elem-group">
                <label for="cust_phone">Your Phone</label>
                <input type="tel" id="cust_phone" name="cust_phone" placeholder="498-348-3872" pattern=(\d{3})-?\s?(\d{3})-?\s?(\d{4}) required>
            </div>

            <div class="elem-group ">
                <label for="checkin_date">Check-in Date</label>
                <input type="date" id="checkin_date" name="checkin_date" required>
            </div>
            <div class="elem-group ">
                <label for="checkout_date">Check-out Date</label>
                <input type="date" id="checkout_date" name="checkout_date" required>
            </div>
            <div class="elem-group">
                <label for="room_preference">Select Room Preference</label>
                <select id="room_preference" name="room_preference" required>
                    <option value="">Choose a Room from the List</option>
                    <option value="connecting">Connecting</option>
                    <option value="adjoining">Adjoining</option>
                    <option value="adjacent">Adjacent</option>
                </select>
            </div>
            <div class="elem-group ">
                <label for="adult">Member of Guests</label>
                <input type="number" id="adult" name="adult" placeholder="2" min="1" required>
            </div>
            <button type="submit" id="submit" name="submit" value="submit" class="button1">Book The Rooms</button>
             <button type="reset"  class="button1">Reset</button> 
              
        </form>



        <script src="js/script.js"></script>
    </body>
</html>



